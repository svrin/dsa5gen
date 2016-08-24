#!/usr/bin/env _coffee
#
# Helper script to search all of our files for i18n strings and update our
# strings file. Helpful in case we missed a code path during testing.
#
# Specifically, searches for gettext `__()` calls in our checked-in files.
#

$ = require 'underscore'
echo = console.log
{exec, execSync} = require 'child_process'
FS = require 'fs'
Path = require 'path'
jsmin = require('jsmin').jsmin


## CONSTANTS:

STRINGS_FILEPATH = "#{__dirname}/../i18n/de.json"

# High-level search for files that look like they may contain __ calls.
# -I (no long option) means exclude binary files.
# https://www.kernel.org/pub/software/scm/git/docs/git-grep.html
GIT_GREP_COMMAND = """
    git grep -I --word-regexp --name-only -e '__' -- #{__dirname}/../data #{__dirname}/../templates
"""

# Tailored regex to match our `__()` calls and extract the strings.
# http://www.regular-expressions.info/reference.html =)
I18N_CALL_REGEX = ///
    \W          # `__` cannot follow a letter, number, or another underscore
    __
    [(\s]       # "calling" means either an `(` or whitespace (CoffeeScript)
    (           # and the string is either...
        '           # single-quoted...
            ([^']+?        # (match anything, but lazily, not greedily)
            [^\\])      # and the closing quote is one that's *not* preceded by a `\`
        '
        |           # or...
        "           # double-quoted...
            ([^"]+?        # (match anything, but lazily, not greedily)
            [^\\])      # and the closing quote is one that's *not* preceded by a `\`
        "
    )
///gi


## MAIN:

# Read in the current set of strings:
echo '\nReading current strings...'
oldStrsMap = JSON.parse (jsmin FS.readFileSync(STRINGS_FILEPATH, 'utf8'))
oldStrs = Object.keys oldStrsMap
echo "#{oldStrs.length} current strings found."

# Grep our checked-in files for a rough match of files:
echo '\nSearching files for strings...'
files = execSync GIT_GREP_COMMAND, {encoding: "utf-8"}
files = files.trim().split '\n'

# Filter out Markdown files since they're only documentation right now:
# (And if we ever used Markdown for user-facing content, I bet we could just
# translate the whole Markdown file itself.)
files = files.filter (file) -> (Path.extname file) isnt '.md'
echo "#{files.length} matching files found."

# Search matching files for all instances of, and extract, i18n strings:
echo "\nExtracting strings from files..."
newStrsMap = {}
for file in files
    code = FS.readFileSync "#{__dirname}/#{file}", 'utf-8'
    while match = I18N_CALL_REGEX.exec code
        if str = match[2] or match[3]
            if not newStrsMap[str]
                newStrsMap[str] = {}
                newStrsMap[str]['str'] = str
                newStrsMap[str]['matches'] = [[file, match.index]]
            else
                newStrsMap[str]['matches'].push [file, match.index]
        else
            console.error 'Anomaly!', match
newStrs = Object.keys newStrsMap
echo "#{newStrs.length} total strings found."

# Compare the old vs. new strings:
added = $(newStrs).difference oldStrs
removed = $(oldStrs).difference newStrs
echo "\n#{added.length} strings added:\n  -", added.join '\n  - '
echo "\n#{removed.length} strings removed:\n  -", removed.join '\n  - '

# Convert to json manually, to keep index and document founds
jsonStrs = []
newStrs.sort()
for key in newStrs
    jsonRepr = "\n"
    for match in newStrsMap[key]['matches']
        jsonRepr += "\n    /* \"" + match[0] + " #" + match[1] + " */"
    jsonRepr += "\n    \"" + key + "\": \"" + (oldStrsMap[key] or newStrsMap[key]['str']) + "\""
    jsonStrs.push jsonRepr
jsonStr = "{" + (jsonStrs.join ",") + "\n}"

# Finally, update the JSON!
FS.writeFile STRINGS_FILEPATH, jsonStr, $

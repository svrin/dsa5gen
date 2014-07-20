tipsy = {
  title: ->
    if $(this).is(".common")
      common = "üblich"
    if $(this).is(".uncommon")
      common = "unüblich"
    if $(this).is(".undef")
      common = "sowohl üblich als auch unüblich"

    group = $(".common:first", this).closest("dd").children("h4").text()
    if group && group.endswith("e")
      group = group.substring(0, group.length - 1)

    if group
      "Dieses #{group} ist #{common} in der gewählten Rasse, Kultur oder Profession"
    else
      "Dieses Talent oder Eigenschaft ist #{common} in der gewählten Rasse, Kultur oder Profession"

  gravity: "nw"
  live: ".common, .uncommon, .undef"
  className: "c_tipsy"
}

$(document).tipsy(tipsy)
<!DOCTYPE html>
<html manifest="/static/resources/appcache.mf" lang="{{ handler.locale.code }}" {% block html_attr %}{% end %}>
<head>
        {% block head %}
            <title>{% if handler.caption %}{{ handler.caption }}{% end %}</title>
        {% end %}

        <base href="{{ request.protocol + "://" + request.host }}"/>

        <meta charset="UTF-8">

    <script src="/static/libs/jquery.min.js" type="application/javascript"></script>
    <script src="/static/libs/require.min.js" type="application/javascript"></script>
    <script src="/static/libs/require-text.min.js" type="application/javascript"></script>
    <script src="/static/libs/underscore-min.js" type="application/javascript"></script>
    <script src="/static/libs/backbone-min.js" type="application/javascript"></script>
    <script src="/static/libs/nprogress.min.js" type="application/javascript"></script>

    <link href="{{ handler.request.protocol }}://cdnjs.cloudflare.com/ajax/libs/nprogress/0.1.2/nprogress.css"
              rel="stylesheet" type="text/css" />
        <link href="{{ handler.request.protocol }}://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.0/normalize.min.css"
              rel="stylesheet" type="text/css" />

        <link href="/static/style/base.css" rel="stylesheet" type="text/css" />

        <script type="application/javascript">
            require.config({
                baseUrl: '/static/'
            });
        </script>
    </head>
    <body {% block body_attr %}{% end %}>
    {% block body %}
        <div class="container-outer">
            <div class="container-inner">
        {% block content %}
            {{ content }}
        {% end %}
            </div>
        </div>
    {% end %}

        <script type="application/javascript" src="/static/app.js"></script>
    </body>
</html>
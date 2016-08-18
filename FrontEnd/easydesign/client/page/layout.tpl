<!doctype html>
{% html lang="en" framework="easydesign:static/js/mod.js" %}
    {% head %}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <link rel="icon" href="/static/favicon.ico">
        <title>{{resParam}}易设计-易家纺电子商务服务平台_花型库</title>
        {% require "easydesign:static/js/jquery-1.10.2.js" %}
    {% endhead %}

    {% body %}
        {% include 'easydesign:page/header.tpl' %}

        {% block content %}
        {% endblock %}

        {% include 'easydesign:page/footer.tpl' %}
    {% endbody %}

{% endhtml %}

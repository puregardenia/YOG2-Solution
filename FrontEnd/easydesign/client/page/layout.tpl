<!doctype html>
{% html lang="en" framework="common:static/js/optimize/mod.js" %}
    {% head %}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <link rel="icon" href="/static/favicon.ico">
        <title>易设计-易家纺电子商务服务平台_花型库</title>
    {% endhead %}

    {% body %}
        {% include 'common:page/top.tpl' %}
        {% include 'easydesign:page/header.tpl' %}

        {% block content %}
        {% endblock %}

        {% include 'easydesign:page/footer.tpl' %}
    {% endbody %}

{% endhtml %}

<!-- layout.tpl -->
<!doctype html>
{% html lang="en" framework="easydata:static/js/mod.js" %}
    {% head %}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/static/favicon.ico">
        <title>{{ title }}</title>
        {% require "easydata:static/js/jquery-1.10.2.js" %}
    {% endhead %}

    {% body %}
        <div id="wrapper">
            <div id="middle" class="container">
                {% block content %}
                {% endblock %}
            </div>
        </div>

    {% endbody %}

{% endhtml %}
<!-- /layout.tpl -->


<!-- index.tpl -->
{% extends 'easydata:page/layout.tpl' %}

{% block content %}
     <div id="pages-container">
        {% widget "easydata:widget/message/message.tpl"%}
     </div>
{% endblock %}
<!-- /index.tpl -->
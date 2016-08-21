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

<!-- for循环 if语句-->
<h1>{{ pagename|title }}</h1>
<ul>
{% for author in authors %}
    <li{% if loop.first %} class="first"{% endif %}>{{ author }}</li>
{% endfor %}
</ul>
<!-- /for循环 if语句-->

<!-- 页面中引用script标签 -->
{% script %}
    var word = require('easydesign:widget/js/index.js');
    alert(word);
{% endscript %}
<!-- /页面中引用script标签 -->
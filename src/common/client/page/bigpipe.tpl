{% extends 'common:page/layout.tpl' %}


{% block content %}











{% require 'common:static/js/optimize/bigpipe.js' %}

<p>------------组件引用---------------</p>

{% widget 'common:widget/optimize.tpl' id="bigpipe" mode="async" %}

<p>------------/组件引用---------------</p>











{% endblock %}
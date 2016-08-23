{% extends 'common:page/layout.tpl' %}


{% block content %}









{% require 'common:static/js/optimize/bigpipe.js' %}

<p>------------组件引用---------------</p>

{% widget 'common:widget/optimize.tpl' id="bigpipe" mode="quickling" %}

<span class="btn" style="padding: 5px 15px;border: 1px solid #ccc;border-radius: 15px;"/>quickling</span>

<p>------------/组件引用---------------</p>





{% script %}
    var $ = require('common:jquery');
    $('.btn').on('click', function(){
        BigPipe.load('bigpipe');
    });
{% endscript %}




{% endblock %}
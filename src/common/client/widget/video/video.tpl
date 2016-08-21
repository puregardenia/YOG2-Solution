{% extends 'common:page/layout.tpl' %}

{% block content %}

    <video id="my-video" class="video-js" controls preload="none" width="750px" height="420px" poster="/static/common/static/images/video_design.jpg" data-setup="{}">
        <source src="../static/cpsj.mp4" type='video/mp4'>
        <p class="vjs-no-js">
          您的浏览器版本过低，为了顺利观看视频，请升级浏览器<br/ >
          <a href="/html/easysofthome/version.html" target="_blank">下载高版本浏览器</a>
        </p>
    </video>

{% script %}
    require('./video.js');
{% endscript %}


{% endblock %}
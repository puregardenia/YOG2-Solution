<p>-------组件开始--------</p>

isVip: {{isVip}}

<ul>
{% for item in getUserInfoList %}
    <li>{{item.lastTime}}</li>
    <li>{{item.userPwd}}</li>
    <li>{{item.userName}}</li>
    <li>{{item.userId}}</li>
    <li>{{item.createTime}}</li>
    -----------------------------
{% endfor %}
</ul>

<p>-------组件结束--------</p>
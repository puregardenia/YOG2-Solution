## 书写注意事项

> 在模板中引用css 和js 文件要使用模板标签，方便后期的压缩、依赖分析、合并等优化措施

比如：
```html
{% require 'easydesign:static/css/global.less' %}
{% require 'easydesign:static/css/index.less' %}
```

避免使用 ``<link />`` 或者 ``<script src=""></script>``，因为优化完后除了加载合并的资源，还是会加载普通的静态资源

在html中也可以只写

```
<!--
  @require ../static/css/global.less
  @require ../static/css/index.less
 -->
```
而不写
```
{% require 'easydesign:static/css/global.less' %}
{% require 'easydesign:static/css/index.less' %}
```
也会生成包配置信息

### 声明依赖

> 使用 `` fis-prepackager-auto-pack`` 插件会自动分析依赖生成 pack.json

- html 中声明css依赖

```html
<!--
  @require ../static/css/global.less
  @require ../static/css/index.less
 -->
```

- js中声明依赖css依赖

```javascript
/**
 * @require alias.css
 */
```

### pack.json生成

> 只有在重新跑任务，并且文件不存在时才会重新生成



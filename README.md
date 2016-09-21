##YOG-Solution

> 使用 [YOG2](https://github.com/fex-team/yog2) 、[FIS3](https://github.com/fex-team/fis3) 打造前端自动化开发/部署解决方案

require:

- ``npm install [-g] fis-prepackager-auto-pack``
- ``npm install [-g] fis3-packager-deps-pack``

开启文件接收服务器

```
cd yog
npm run debug-win
```

编译 common资源文件 并发送到文件接收服务器

```
cd src/common
yog2 release debug -w -L --fis3
```

编译 项目资源文件 并发送到文件接收服务器

```
cd ***
yog2 release debug -w -L --fis3
```

###Src项目简介

**common**

> 公共的项目文件（js插件库和Mock/Bigpipe/Quicking测试）

**easydesign**

> 设计平台前端开发示例

**react-redux**

> React 示例

fork 自 [yog2-react-redux-demo](https://github.com/hefangshi/yog2-react-redux-demo)

**spa**

> Single Page Application Demo（单页应用）

fork 自 [yog2-spa-demo](https://github.com/fex-team/yog2-spa-demo)

### 打包

``fis-prepackager-auto-pack`` 会根据依赖关系生成的打包文件 pack.json

分析 ``pack.json`` 文件根据需要删除不需要打包的配置信息，然后把所有文件路径前的 ``'/'``
 删除, 使用 ``module.exports.conf = {}`` 包裹，重命名为pack.js
``fis3-packager-deps-pack`` 插件会自动读取打包配置，然后生成打包文件并替换路径


##

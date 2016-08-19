npm run debug-win
yog2 release --dest debug --watch


命令行{
  监听文件修改，对修改文件进行增量编译并发布
    yog2 release --dest debug --watch
  监听文件修改，并自动刷新页面
    自动刷新页面需要下载 livereload 插件，并且 yog2 release 命令执行后需手动刷新一次页面
      yog2 release --dest debug --watch --live
  压缩静态资源
    yog2 release --dest debug --optimize
  为静态资源添加MD5后缀
    yog2 release --dest debug --md5
  打包静态资源
    yog2 release --dest debug --pack
  为静态资源添加 domain
    yog2 release --dest debug --domains

  上述的所有参数均可以组合使用，比如使用以下命令
    yog2 release --watch --live --optimize --md5 --domains --pack --dest debug
  这些参数还提供了缩写和组合的功能，比如上述的命令缩写后可以写成
    yog2 release -w -L -o -m -D -p -d debug
}

tpl中 require() js 需要js在static中,static中引用的js文件要在widget中

在 widget 中require widget 不会执行
在 tpl 中require widget 不会执行
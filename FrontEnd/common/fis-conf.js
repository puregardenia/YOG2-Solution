/**
 * @file FIS 配置
 * @author
 */

fis.config.set('namespace', 'common');

// chrome下可以安装插件实现livereload功能
// https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
// fis.config.set('livereload.port', 35729);

if (fis.IS_FIS3) {
    fis.media('debug').match('*', {
        // useHash: false,
        // useSprite: false,
        // optimizer: null,
        deploy: fis.plugin('http-push', {
            receiver: 'http://127.0.0.1:8085/yog/upload',
            to: '/'
        })
    });
    fis.media('debug-prod').match('*', {
        deploy: fis.plugin('http-push', {
            receiver: 'http://127.0.0.1:8085/yog/upload',
            to: '/'
        })
    });

}
else {
    fis.config.set('deploy', {
        debug: {
            to: '/',
            // yog2 默认的部署入口，使用调试模式启动 yog2 项目后，这个入口就会生效。IP与端口请根据实际情况调整。
            receiver: 'http://127.0.0.1:8085/yog/upload'
        }
    });



    // 加md5
    fis.match('*.{png,js,css}',{
        // release: '/static/$0',
        useHash: true
    });

    // 启用 fis-spriter-csssprites 插件
    fis.match('::package', {
      spriter: fis.plugin('csssprites')
    });

    // 对 CSS 进行图片合并
    fis.match('*.css', {
      useSprite: true,
      // fis-optimizer-clean-css 插件进行压缩，已内置
      optimizer: fis.plugin('clean-css')
    });

///////////////////// 优化 //////////////////////////////
    // fis.match('*.js', {
    //     // fis-optimizer-uglify-js 插件进行压缩，已内置
    //     optimizer: fis.plugin('uglify-js')
    // });

    // fis.match('*.png', {
    //     // fis-optimizer-png-compressor 插件进行压缩，已内置
    //     optimizer: fis.plugin('png-compressor')
    // });
    //
    fis.match('::package', {
      postpackager: fis.plugin('loader', {
        allInOne: true
      })
    });

    fis.match('*.less', {
      parser: fis.plugin('less'),
      rExt: '.css'
    });


}

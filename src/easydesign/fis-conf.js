/**
 * @file FIS 配置
 * @author
 */

fis.config.set('namespace', 'easydesign');

// chrome下可以安装插件实现livereload功能
// https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
fis.config.set('livereload.port', 35729);

if (fis.IS_FIS3) {


// 设置自动包裹 define(id,function(){})
fis.match('static/js/**/*.js', { isMod: true });




/////////////// 雪碧图 ////////////////
    // 启用 fis-spriter-csssprites 插件
    fis.match('::package', {
        spriter: fis.plugin('csssprites')
    });

    // 对 CSS 进行图片合并
    fis.match('*.less', {
          useSprite: true,
          // fis-optimizer-clean-css 插件进行压缩，已内置
          optimizer: fis.plugin('clean-css')
    });

    fis.match('widget/*.{jpg,png,gif,js,css}', {
        isMod: true
    });


///////////////////// 优化 ///////////////////////////
    fis.match('*.js', {
        // fis-optimizer-uglify-js 插件进行压缩，已内置
        optimizer: fis.plugin('uglify-js')
    });

    fis.match('*.css', {
        // fis-optimizer-clean-css 插件进行压缩，已内置
        optimizer: fis.plugin('clean-css')
    });

    fis.match('*.png', {
        // fis-optimizer-png-compressor 插件进行压缩，已内置
        optimizer: fis.plugin('png-compressor')
    });

//////////////////////// 工作模式 /////////////////////
    fis.media('debug').match('*', {
        useHash: false,
        useSprite: false,
        optimizer: null,
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

} else {

/////////////// FIS2 //////////////
    fis.config.set('deploy', {
        debug: {
            to: '/',
            // yog2 默认的部署入口，使用调试模式启动 yog2 项目后，这个入口就会生效。IP与端口请根据实际情况调整。
            receiver: 'http://127.0.0.1:8085/yog/upload'
        }
    });

}

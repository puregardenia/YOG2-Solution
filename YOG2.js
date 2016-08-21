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
less编写区别{
    1.需要手动加上width 和 height,部分需要加上'inline-block'、overflow:hidden;
    2.图片路径写相对路径，需要图片合并的后面加上'?__sprite'
        width: 68px;
        height: 68px;
        background-image: url('../images/icon/search.png?__sprite');
}


模块化开发{
    widget 中的组建会自动加模块包裹
        define(id, function(require, exports, module) {
            // body...
        })
    static中的js可以调用static中的js,前提是需要封装

    page中的tpl直接引入widget中的js,不会执行其中的代码
    seajs中因为seajs会执行代码，所以不会出现问题

    widget中的tpl可以嵌入{% script %} 标签, 然后使用模块调用
        但是不可以嵌入{% require '' %}
    page中的tpl可以嵌入{% require '' %}，
        但是不可以嵌入{% script %}使用模块化的调用方法


    1.{
        // index.tpl
        {% require 'easydesign:static/js/index.js' %}

        // easydesign:static/js/index.js
        var result = require('easydesign:widget/js/index.js');
        require('easydesign:widget/js/jquery/jquery');
        alert(result);
        $('.nav2').hide();

        // easydesign:widget/js/index.js
        module.exports = 'A';
    }
    2.{
        // index.tpl
        {% require 'easydesign:static/js/index.js' %}

        // easydesign:static/js/index.js
        var result = require('easydesign:widget/js/index.js');
        alert(result);

        // easydesign:widget/js/index.js
        require('easydesign:widget/js/jquery/jquery');
        $('.nav2').hide();
        module.exports = 'A';
    }
    3.tpl组件式开发{
        // index.tpl
        {% widget 'easydesign:widget/tpl/banner/banner.tpl' %}

        // widget/tpl/banner/banner.tpl
        {% script %}
            var result = require('easydesign:widget/js/index.js');
            alert(result.string());
        {% endscript %}

        // widget/js/index.js
        module.exports.string = 'A';
        module.exports.val = function() {
            return 'This is a Function';
        }

    }
}
define('easydesign:static/js/Index/sourceLib', function(require, exports, module) {

    require('common:static/js/jquery');
    require('common:static/js/lazyload');
/////////////////////////////////////////////易家纺设计资源库 鼠标滑过效果///////////////////////////////
    // 图片延时加载
    $('ul.exo_conbox:eq(0) img').lazyload();

    $('.exo_conbox li').hover(function() {
        $('.selectbox .search')
        $(this).find('.search,.select_text').css('display','block').animate({'opacity': '1'},300);
        $(this).find('.top-line,.bottom-line').animate({'height':'5px'},300);
        $(this).find('.right-line,.left-line').animate({'width':'5px'},300);
        $(this).find('.selectbox').animate({'opacity':'0.6'},300);
    }, function() {
        $(this).find('.search,.select_text').hide().animate({'opacity': '0'},300);
        $(this).find('.top-line,.bottom-line').animate({'height':'0'},300);
        $(this).find('.right-line,.left-line').animate({'width':'0'},300);
        $(this).find('.selectbox').animate({'opacity':'0'},300);
    });

////////////////////////////////////////////易家纺设计资源库 点击切换效果///////////////////////////////
    function switchSourceLib(){
        $('.tew_box .exp_butt li').bind('click',function(){
            var currentIndex = $(this).index();

            $('ul.exo_conbox:eq('+ currentIndex +') img').lazyload({
                event : "sporty"
            }).trigger("sporty");

            $('.tew_box .exp_butt li').removeClass('curr_li');
            $(this).addClass('curr_li');
            $('.tew_box .exo_conbox').hide();
            $('.tew_box .exo_conbox').eq(currentIndex).fadeIn(500);
        });
    }

    $(document).ready(function () {
        switchSourceLib();
    })

});
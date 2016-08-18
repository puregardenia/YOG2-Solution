
    require('easydesign:widget/jquery.jquery');
    require('easydesign:widget/layer/layer');
    require('easydesign:widget/jquery.event.move');
    require('easydesign:widget/jquery.loadImage/jquery.loadImage');
//    require('../../lib/jquery.twentytwenty/jquery.twentytwenty.index');

var simulationFabricObj = {'fabricList':[{'src':'/images/production/easydesign/index_fabricList_1.jpg','imgLink':'/images/production/easydesign/simulation_fabric_vr.jpg'},
    {'src':'/images/production/easydesign/index_fabricList_2.jpg','imgLink':'/images/production/easydesign/index_fabric_2.jpg'},
    {'src':'/images/production/easydesign/index_fabricList_3.jpg','imgLink':'/images/production/easydesign/index_fabric_3.jpg'},
    {'src':'/images/production/easydesign/index_fabricList_4.jpg','imgLink':'/images/production/easydesign/index_fabric_4.jpg'}]};

    //接口 接收点击面料的地址
    exports.simulationFabricUrl;
    $('.simulation-box').twentytwenty();
    fraticLayer(simulationFabricObj);
    $('.twentytwenty-handle').css('left','600px');
//    require('js/front/easydesign/Index/banner');
    // 模拟效果
//    require('js/front/easydesign/Index/simulation');
    // 设计资源库
//    require('js/front/easydesign/Index/sourceLib');
    // 工作室轮播图
   var studioShow = require('js/front/easydesign/Index/studioShow');

    $(document).ready(function () {
        $('.exo_conbox li').append("<div class='top-line'></div><div class='right-line'></div><div class='bottom-line'></div><div class='left-line'></div>");
        var w = $(window).width();
        $('.banner-li').css("width",w);
        // $('.banner-wrapper').css("height",w/3.84);

    });

    var top;
    $(window).scroll(function() {
        top = $(window).scrollTop();
        if(top > 1750){
            studioShow.studioNumScroll($('.studip_conrg .dahaozi'));
        }

    });

/////////////////////////////////////////////弹出层/////////////////////////////////////////////////

    $('.videoDiv').on('click',function () {
        $.layer({
            type: 2,
            title: false,
            area: ['910px', '700px'],
            fix: false,
            shadeClose: false,
            offset: [($(window).height() - 700)/2+'px', ''], //上下垂直居中
            border: [0],
            shade : [0.9, '#000'],
            iframe: {src: ''}
        });
    });

    $('.a04').on('click',function () {
        $.layer({
            type: 2,
            title: false,
            area: ['910px', '700px'],
            fix: false,
            shadeClose: false,
            offset: [($(window).height() - 700)/2+'px', ''], //上下垂直居中
            border: [0],
            shade : [0.9, '#000'],
            iframe: {src: ''}
        });
    });





/////////////////////////////////////////////面料对比遮罩及点击事件////////////////////////////////////////////////

    function fraticLayer(simulationFabricObj){
        $('.simulation-box').find('img').show();
        var zIndex = $('.twentytwenty-overlay').css('z-index');
        $('body').append('<div id="overLayer_fratic_top" style=\'display:block;width:100%;height:100%;position:absolute;\'><div style=\'postion:relative;display:block;width:100%;height:100%;\'><span>真实面料照片</span><span>易家纺面料模拟效果</span></div></div>')
        $('body').append('<div id="overLayer_fratic" style=\'display:block;width:100%;height:100%;position:absolute;\'></div>')
        fraticLayer_position();
        $('.twentytwenty-container').bind('mouseleave',function(){
            $('#overLayer_fratic').show();
            $('#overLayer_fratic_top').show();
        });
        $('#overLayer_fratic_top').bind('mouseover',function(){
            $('#overLayer_fratic').hide();
            $('#overLayer_fratic_top').hide();
        });
        $(".twentytwenty-handle").bind('movestart',function(){
            $('.twentytwenty-container').unbind('click');
        });
        $(".twentytwenty-handle").bind('moveend',function(){
            setTimeout(function(){
                bindClickSimulationFabric();
            }, 800);
        });
        loadFraticList(simulationFabricObj);
        bindClickSimulationFabric();
    }

    function loadFraticList(dataobj){
      $('.fabric_list img').bind('hover',function(){
          $('#simulation_fabric_right').LoadImage({'imgSrc':$(this).attr('imgLink'),'container':'.simulation-box'});
      });
    }

    function bindClickSimulationFabric(){
        $('.twentytwenty-overlay').bind('click',function(event){
             if(exports.simulationFabricUrl){
                window.open(exports.simulationFabricUrl);
             }
        });
    }

    function fraticLayer_position(){
       var top = $('.twentytwenty-overlay').offset().top;
        var left = $('.twentytwenty-overlay').offset().left;
        var width = $('.twentytwenty-overlay').width();
        var height = $('.twentytwenty-overlay').height();
       $('#overLayer_fratic').css({'z-index':'41','opacity': '0.2','filter': 'alpha(opacity=20)','background': '#000','top':top,'left':left,'width':width,'height':height});
        $('#overLayer_fratic_top').css({'color':'#ffffff','z-index':'42','top':top,'left':left,'width':width,'height':height});
        $('#overLayer_fratic_top span:eq(0)').css({'width':103,'bottom':'17px','left':'20px',
          'position':'absolute','text-align':'center','line-height': '22px','padding': '3px',
          'background': '#f90','border-radius': '3px','background': 'rgba(0, 0, 0, 0.38)','padding-bottom': '4px\0'});
        $('#overLayer_fratic_top span:eq(1)').css({'width':150,'bottom':'17px','right':'20px',
          'position':'absolute','text-align':'right','line-height': '20px',
          'text-align':'center','line-height': '22px','padding': '3px',
          'background': '#f90','border-radius': '3px','background': 'rgba(0, 0, 0, 0.38)','padding-bottom': '4px\0'});
    }

    function fraticLayer_resize(){
       fraticLayer_position();
    }

////////////////////////////////媒体图片鼠标划过特效 暂时未应用//////////////////////////////////
    $(".video_icobutt_def").append('<span class="video_icobutt_def2"></span>');
    $(".video_icobutt_def2").css('opacity', 0);
    $(".video_icobutt_def").hover(function(){
            $(".video_icobutt_def2").stop().animate({opacity: '1'},600);
        },
        function(){
            $(".video_icobutt_def2").stop().animate({opacity: '0'},600);
        });

    $(".video_icobutt_def").bind('click',function(){
        $("#flashPlay").show();

    });

    $("#flashPlay").hover(function(){
        $(".video_icobutt_def").show();

    },function(){
        $(".video_icobutt_def").hide();

    });



    function startVideo(flashPlay){

        flashPlay.append('<object id="flashPlayer" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="766" height="750">'+
            '<param name="movie" value="flash3985.swf" />'+
            '<param name="quality" value="high" />'+
            '<embed src="flash3985.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="766" height="750"></embed>'+
            '</object>)');
    }

    function stopVideo(flashPlay){
        flashPlay.html('');
    }

    function bindVideoClick(){
        var flashPlay = $(window.frames['playVideo'].document).find("#flashPlay");

        $('.video_icobutt_def').bind('click',function(){

            if(flashPlay.find('#flashPlayer').length > 0){
                alert(document.getElementById('flashPlayer').playState);
                stopVideo(flashPlay);
                flashPlay.find('img').show();
                // $('.video_icobutt_def').show();
                $('#videoLayer').css({'opacity':0.4,'filter':'alpha(opacity=40)'});

            }else{
                startVideo(flashPlay);
                flashPlay.find('img').hide();
                //$('.video_icobutt_def').hide();
                $('#videoLayer').css({'opacity':0,'filter':'alpha(opacity=0)'});
            }

        });

    }

    function bindVideoHover(){
        var flashPlay = $(window.frames['playVideo'].document).find("#flashPlay");


        $('#videoLayer').bind('mouseover',function(){
            //$('.video_icobutt_def').show();
            $('#videoLayer').css({'opacity':0.4,'filter':'alpha(opacity=40)'});

        });
        $('#videoLayer').bind('mouseleave',function(){
            if(flashPlay.find('#flashPlayer').length > 0){
                //$('.video_icobutt_def').hide();
                $('#videoLayer').css({'opacity':0,'filter':'alpha(opacity=0)'});
            }

        });

    }


////////////////////////////////页面加载事件及页面尺寸改变事件//////////////////////////////////
    $(document).ready(function(){
        fraticLayer_resize();
    });

    $(window).resize(function () {
        fraticLayer_resize();
    });
{% extends 'easydesign:page/layout.tpl' %}

{% block content %}
<link href="../static/css/global.less" rel="stylesheet" type="text/css"/>
<link href="../static/css/index.less" rel="stylesheet" type="text/css"/>

  <div class="index-banner-box">
    <div class="banner-wrapper">
      <ul class="clearfix banner-box">
        <li class="banner-li banner-color2">
          <a class="banner-a" href="/html/easysofthome/download/download.html">
            <img src="../static/images/img/banner2.jpg">
          </a>
        </li>
        <li class="banner-li banner-color1">
          <a class="banner-a" href="/html/easysofthome/download/download.html">
            <img src="../static/images/img/banner1.jpg">
          </a>
        </li>
        <li class="banner-li banner-color3">
          <a class="banner-a" href="/html/easysofthome/download/download.html">
            <img src="../static/images/img/banner3.jpg">
          </a>
        </li>
      </ul>
    </div>
    <ul class="switchable-triggers clearfix">
      <li class="current lf"></li>
      <li class="lf"></li>
      <li class="lf"></li>
    </ul>
  </div>
  <div class="simulation_outbox">
    <div class="sim_titlebox">
      <span class="title_left"></span>
      <span class="title_rg"></span>
      <p class="sim_title">易家纺在线设计系统模拟效果</p>
    </div>
    <p class="sim_exp">高科技二位织物仿真和三维成品技术，仿真度达到照片级效果</p>
    <div class="simulation-box">
      <img id="simulation_fabric_left" src="../static/images/img/simulation_fabric.jpg">
      <img id="simulation_fabric_right" src="../static/images/img/simulation_fabric_vr.jpg">
      <div class="fabric_list">
        <ul>
          <li>
            <img src="../static/images/img/index_fabricList_1.jpg" imglink="/static/easydesign/static/images/img/simulation_fabric_vr.jpg"></li>
        <li>
            <img src="../static/images/img/index_fabricList_2.jpg" imglink="/static/easydesign/static/images/img/index_fabric_2.jpg"></li>
        <li>
            <img src="../static/images/img/index_fabricList_3.jpg" imglink="/static/easydesign/static/images/img/index_fabric_3.jpg"></li>
        <li>
            <img src="../static/images/img/index_fabricList_4.jpg" imglink="/static/easydesign/static/images/img/index_fabric_4.jpg"></li>

        </ul>
      </div>
    </div>
    <div class="sim_img_box">
      <ul class="clearfix">
        <li>
          <a href="./simulation.html?id1" target="_black">
            <img src="../static/images/img/affect.jpg" alt=""> <b></b>
            <div class="sim_cover first_cover"></div>
            <div class="sim_cont_box">
              <p class="sim_cover_tit">卧室</p>
              <p class="sim_cover_cont">
                场景编号：WSCJMX016
              主要面料编号：红色 FD194338680211523
              </p>
            </div>
          </a>
        </li>
        <li>
          <a href="./simulation.html?id2" target="_black">
            <img src="../static/images/img/affect2.jpg" alt=""> <b></b>
            <div class="sim_cover"></div>
            <div class="sim_cont_box">
              <p class="sim_cover_tit">浴室</p>
              <p class="sim_cover_cont">
                场景编号：YSCJMX003
              主要面料编号： 黄褐色 FD222651104645187
              </p>
            </div>
          </a>
        </li>
        <li>
          <a href="./simulation.html?id3" target="_black">
            <img src="../static/images/img/affect3.jpg" alt="">
            <b></b>
            <div class="sim_cover"></div>
            <div class="sim_cont_box">
              <p class="sim_cover_tit">客厅</p>
              <p class="sim_cover_cont">
                场景编号：KTCJMX003
              主要产品：方形靠垫
                <br/>
                圆饼靠垫
              </p>
            </div>
          </a>
        </li>
        <li>
          <a href="./simulation.html?id4" target="_black">
            <img src="../static/images/img/affect4.jpg" alt="">
            <b></b>
            <div class="sim_cover"></div>
            <div class="sim_cont_box">
              <p class="sim_cover_tit">餐厅</p>
              <p class="sim_cover_cont">
                场景编号：CTCJMX004
              主要面料编号： 红色 FD222925982554179
              </p>
            </div>
          </a>
        </li>
      </ul>
    </div>
  </div>
  <div class="tew_box">
    <div class="sim_titlebox">
      <span class="title_left"></span>
      <span class="title_rg"></span>
      <p class="sim_title">易家纺设计资源库</p>

    </div>
    <p class="sim_exp">最大的家纺设计花型库和面料品质样库，最完整的家纺款式和工艺单库（唯一）。</p>
    <ul class="exp_butt clearfix">
      <li class="lf curr_li">花型库</li>
      <li class="lf exp_lileft">面料库</li>
      <li class="lf exp_lileft">品质样库</li>
      <li class="lf exp_lileft">成品设计场景</li>
      <li class="lf exp_lileft">款式模型</li>
      <li class="lf exp_lileft">成品作品</li>
    </ul>
        <!-- 花型库 -->
      <ul id="library_flowerPattern" class="exo_conbox clearfix">
        <li class="lf con_left">
          <a target="_blank" href="/html/easydesign/Flowers/viewFlower.html">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
        </li>
        <li class="lf con_left">
          <a href="/html/easydesign/Fabric/Fabric.html">
            <span class="moreimg"></span>
            <div class="select_text">更多</div>
          </a>
        </li>
      </ul>
    <ul id="library_fabric" class="exo_conbox clearfix" style="display:none">
      <li class="lf con_left">
        <a target="_blank" href="/html/easydesign/Fabric/viewFabric.html">
          <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
          <div class="selectbox"></div>
          <div class="more-box">
            <span class="search"></span>
            <div class="select_text" href="#">古典风格客厅场景</div>
          </div>
        </a>
      </li>
      <li class="lf con_left">
        <a href="#">
          <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
          <div class="selectbox"></div>
          <div class="more-box">
            <span class="search"></span>
            <div class="select_text" href="#">古典风格客厅场景</div>
          </div>
        </a>
      </li>
      <li class="lf con_left">
        <a href="#">
          <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
          <div class="selectbox"></div>
          <div class="more-box">
            <span class="search"></span>
            <div class="select_text" href="#">古典风格客厅场景</div>
          </div>
        </a>
        </li>
        <li class="lf con_left">
          <a href="#">
            <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
            <div class="selectbox"></div>
            <div class="more-box">
              <span class="search"></span>
              <div class="select_text" href="#">古典风格客厅场景</div>
            </div>
          </a>
          </li>
          <li class="lf con_left">
            <a href="#">
              <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
              <div class="selectbox"></div>
              <div class="more-box">
                <span class="search"></span>
                <div class="select_text" href="#">古典风格客厅场景</div>
              </div>
            </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
                <li class="lf con_left">
                  <a href="/html/easydesign/Fabric/Fabric.html">
                    <span class="moreimg"></span>
                    <div class="select_text">更多</div>
                  </a>
                </li>
              </ul>

              <!-- 品质样库 -->
            <ul id="library_quality" style="display:none" class="exo_conbox clearfix">
            <li class="lf con_left">
              <a target="_blank" href="/html/easydesign/quality/viewQuality.html">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
          <li class="lf con_left">
            <a href="#">
              <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
              <div class="selectbox"></div>
              <div class="more-box">
                <span class="search"></span>
                <div class="select_text" href="#">古典风格客厅场景</div>
              </div>
            </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
                <li class="lf con_left">
                  <a href="/html/easydesign/Fabric/Fabric.html">
                    <span class="moreimg"></span>
                    <div class="select_text">更多</div>
                  </a>
                </li>
              </ul>
            <!-- 成品设计场景 -->
            <ul id="library_productDesignScene" style="display:none" class="exo_conbox clearfix">
            <li class="lf con_left">
              <a target="_blank" href="/html/easydesign/scene/viewScene.html">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
          <li class="lf con_left">
            <a href="#">
              <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
              <div class="selectbox"></div>
              <div class="more-box">
                <span class="search"></span>
                <div class="select_text" href="#">古典风格客厅场景</div>
              </div>
            </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
                <li class="lf con_left">
                  <a href="/html/easydesign/Fabric/Fabric.html">
                    <span class="moreimg"></span>
                    <div class="select_text">更多</div>
                  </a>
                </li>
              </ul>

            <!-- 款式模型 -->
            <ul id="library_StyleModel" style="display:none" class="exo_conbox clearfix">
            <li class="lf con_left">
              <a target="_blank" href="/html/easydesign/Model/viewModel.html">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
          <li class="lf con_left">
            <a href="#">
              <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
              <div class="selectbox"></div>
              <div class="more-box">
                <span class="search"></span>
                <div class="select_text" href="#">古典风格客厅场景</div>
              </div>
            </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
                <li class="lf con_left">
                  <a href="/html/easydesign/Fabric/Fabric.html">
                    <span class="moreimg"></span>
                    <div class="select_text">更多</div>
                  </a>
                </li>
              </ul>

            <!-- 成品作品 -->
            <ul id="library_FinishedProduct" style="display:none" class="exo_conbox clearfix">
            <li class="lf con_left">
              <a target="_blank" href="/html/easydesign/uidesign/viewWorks.html">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
            </li>
          <li class="lf con_left">
            <a href="#">
              <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
              <div class="selectbox"></div>
              <div class="more-box">
                <span class="search"></span>
                <div class="select_text" href="#">古典风格客厅场景</div>
              </div>
            </a>
            </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
            <li class="lf con_left">
              <a href="#">
                <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                <div class="selectbox"></div>
                <div class="more-box">
                  <span class="search"></span>
                  <div class="select_text" href="#">古典风格客厅场景</div>
                </div>
              </a>
              </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
              <li class="lf con_left">
                <a href="#">
                  <img data-original="/static/easydesign/static/images/img/scenes.png" class="img_position">
                  <div class="selectbox"></div>
                  <div class="more-box">
                    <span class="search"></span>
                    <div class="select_text" href="#">古典风格客厅场景</div>
                  </div>
                </a>
                </li>
                <li class="lf con_left">
                  <a href="/html/easydesign/Fabric/Fabric.html">
                    <span class="moreimg"></span>
                    <div class="select_text">更多</div>
                  </a>
                </li>
              </ul>

            </div>

            <div class="effect_box">
              <div class="sim_titlebox">
                <span class="title_left"></span>
                <span class="title_rg"></span>
                <p class="sim_title">易设计视频介绍</p>

              </div>
              <p class="sim_exp">请您耐心看完我们的视频，让您更加了解易设计！</p>


              <div class="video_comp"  style="position: relative;">

                <div class="video_cen">
              <!-- <iframe id="playVideo" name=" " src="/common/video" width="750px" height="420" marginheight="0" marginwidth="0" style="border:0px" frameborder="0" scrolling="no"></iframe> -->

              {% widget 'common:widget/video/video.tpl' %}

            </div>
          </div>

        </div>

<!--<script src="../static/js/Index/index.js"></script>-->

{% script %}

  require('easydesign:static/js/Index/index.js');

{% endscript %}

{% endblock %}
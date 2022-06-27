{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
  
  <div class="top_bar" style="background-color: #E53B5D; color: white !important;">
      <div class="container">
          <div class="row">
              <div class="col d-flex flex-row">
                  <div class="top_bar_contact_item">
                      <div class="top_bar_icon"><img
                              src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560918577/phone.png"
                              alt=""></div>+237 693 132 111
                  </div>
                  <div class="top_bar_contact_item">
                      <div class="top_bar_icon"><img
                              src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560918597/mail.png"
                              alt=""></div><a href="mailto:fastsales@gmail.com"
                          style=" color: white !important;">contact@bookbookshop.com</a>
                  </div>
                  <div class="top_bar_content ml-auto">
                      
                      <div class="top_bar_user">
                          
                          {hook h='displayNav1'}
                          
                          {* <div>
                            <a href="#" style=" color: white !important;"><img
                                      src="{$urls.img_url}/flags/fr.png" alt="Français" /></a>
                          
                          </div> *}
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  {/block}
  
  {block name='header_top'}
    <div class="header_main" style="background-color: white;">
      <div class="container">
          <div class="row">
  
              <!-- Logo -->
              <div class="col-lg-2 col-sm-3 col-3 order-1">
                  <div class="logo_container">
                      <div class="logo">
                          <a id="logo" href="{$urls.base_url}" title="{$shop.name}">
                          <img class="scale-with-grid" src="{$shop.logo}" alt="{$shop.name}" style="height: 100%; width: 100%" />
                          </a>
                      </div>
                  </div>
              </div>
  
              {hook h="displaySearchBarModule"}
              <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                  {hook h="displayMyAccountBlock"} 
                  {hook h="displayShippingCartModule"}
                </div>
              </div>           
          </div>
      </div>
    </div>
    {hook h='displayNavFullWidth'}
  {/block}
  
  {block name='header_nav'}
    {hook h="displayTop"}

    <div class="mfn-main-slider on_mobile" id="mfn-rev-slider">
      <div id="rev_slider_55_1_wrapper"
          class="rev_slider_wrapper fullwidthbanner-container flv_rev_27">
          <div id="rev_slider_55_1" class="rev_slider fullwidthabanner" data-version="5.0.4.1">
              <ul>
                  <li data-index="rs-89" data-transition="fade" data-slotamount="7"
                      data-easein="default" data-easeout="default" data-masterspeed="300"
                      data-rotate="0" data-saveperformance="off" data-title="mark"
                      data-description="">
                      <img src="{$urls.img_url}bbs/slider.jpg" alt="" width="1920" height="731"
                          data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"
                          class="rev-slidebg" data-no-retina>
                      <div class="tp-caption tp-resizeme flv_rev_9" id="slide-89-layer-1"
                          data-x="right" data-hoffset="-62" data-y="bottom" data-voffset="-79"
                          data-width="auto" data-height="auto" data-transform_idle=""
                          data-transform_in="x:right;s:900;e:Power3.easeInOut;"
                          data-transform_out="auto:auto;s:300;" data-start="500"
                          data-responsive_offset="on"><img src="{$urls.img_url}bbs/livre1.jpg" alt=""
                              width="426" height="609" data-no-retina>
                      </div>
                      <div class="tp-caption tp-resizeme flv_rev_8" id="slide-89-layer-2"
                          data-x="right" data-hoffset="303" data-y="bottom" data-voffset="-240"
                          data-width="auto" data-height="auto" data-transform_idle=""
                          data-transform_in="x:right;s:700;e:Power3.easeInOut;"
                          data-transform_out="auto:auto;s:300;" data-start="1500"
                          data-responsive_offset="on"><img src="{$urls.img_url}bbs/livre3.jpg" alt=""
                              width="467" height="622" data-no-retina>
                      </div>
                      <div class="tp-caption tp-resizeme flv_rev_7" id="slide-89-layer-3" data-x="0"
                          data-y="center" data-voffset="-40" data-width="auto" data-height="auto"
                          data-transform_idle=""
                          data-transform_in="x:-50px;opacity:0;s:500;e:Power3.easeInOut;"
                          data-transform_out="auto:auto;s:300;" data-start="2200"
                          data-responsive_offset="on" width="383" height="157"><b
                              style="color: white; font-size: 10em !important;"> Votre</b>
                      </div>
                      <div class="tp-caption tp-resizeme flv_rev_6" id="slide-89-layer-4" data-x="0"
                          data-y="center" data-voffset="100" data-width="auto" data-height="auto"
                          data-transform_idle=""
                          data-transform_in="x:-50px;opacity:0;s:500;e:Power3.easeInOut;"
                          data-transform_out="auto:auto;s:300;" data-start="2500"
                          data-responsive_offset="on"><b
                              style="color: white; font-size: 7em !important;">Libraire</b>
                      </div>
                      <!-- <div class="tp-caption tp-resizeme flv_rev_5" id="slide-89-layer-5" data-x="right"
                      data-hoffset="296" data-y="center" data-voffset="-6" data-width="auto"
                      data-height="auto" data-transform_idle=""
                      data-transform_in="x:0;y:0;z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:1;s:400;e:Power3.easeInOut;"
                      data-transform_out="auto:auto;s:300;" data-start="3000"
                      data-responsive_offset="on"><img
                          src="content/shop/images/shop_page_slider_price1.png" alt="" width="114"
                          height="130" data-no-retina>
                  </div>
                  <div class="tp-caption tp-resizeme flv_rev_12" id="slide-89-layer-6" data-x="right"
                      data-hoffset="-16" data-y="center" data-voffset="195" data-width="auto"
                      data-height="auto" data-transform_idle=""
                      data-transform_in="x:0;y:0;z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:1;s:400;e:Power3.easeInOut;"
                      data-transform_out="auto:auto;s:300;" data-start="3200"
                      data-responsive_offset="on"><img
                          src="content/shop/images/shop_page_slider_price2.png" alt="" width="130"
                          height="114" data-no-retina>
                  </div> -->
                      <div class="tp-caption tp-resizeme flv_style_24" id="slide-89-layer-7"
                          data-x="0" data-y="center" data-voffset="220" data-width="auto"
                          data-height="auto" data-transform_idle=""
                          data-transform_in="opacity:0;s:500;e:Power3.easeInOut;"
                          data-transform_out="auto:auto;s:300;" data-start="3400"
                          data-responsive_offset="on"><a href="index.html#best_saler"><img
                                  class="invisible" src="{$urls.img_url}bbs/button.png" alt="" width="197"
                                  height="46" data-no-retina></a>
                      </div>
                  </li>
              </ul>
              <div class="tp-bannertimer tp-bottom flv_vis_hid"></div>
          </div>
      </div>
    </div>
    
   {* <nav class="header-nav">
      <div class="container">
        <div class="row">
          <div class="hidden-sm-down">
            <div class="col-md-5 col-xs-12">
              {hook h='displayNav1'}
            </div>
            <div class="col-md-7 right-nav">
                {hook h='displayNav2'} *}
  {* {hook h="displayHeader"} *}
  
            {* </div>
          </div>
          <div class="hidden-md-up text-sm-center mobile">
            <div class="float-xs-left" id="menu-icon">
              <i class="material-icons d-inline">&#xE5D2;</i>
            </div>
            <div class="float-xs-right" id="_mobile_cart"></div>
            <div class="float-xs-right" id="_mobile_user_info"></div>
            <div class="top-logo" id="_mobile_logo"></div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </nav>*}
  {/block} 
  
  
  


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
<script src="{$urls.js_url}jquery-3.min.js"></script>

<script>
$(document).ready(function () {
    "use strict";

    var menuActive = false;
    var header = $('.header');
    setHeader();
    //initCustomDropdown();
    initPageMenu();

    function setHeader() {

        if (window.innerWidth > 991 && menuActive) {
            closeMenu();
        }
    }

    /* function initCustomDropdown() {
        if ($('.custom_dropdown_placeholder').length && $('.custom_list').length) {
            var placeholder = $('.custom_dropdown_placeholder');
            var list = $('.custom_list');
        }

        placeholder.on('click', function (ev) {
            if (list.hasClass('active')) {
                list.removeClass('active');
            }
            else {
                list.addClass('active');
            }

            $(document).one('click', function closeForm(e) {
                if ($(e.target).hasClass('clc')) {
                    $(document).one('click', closeForm);
                }
                else {
                    list.removeClass('active');
                }
            });

        });

        $('.custom_list a').on('click', function (ev) {
            ev.preventDefault();
            var index = $(this).parent().index();

            placeholder.text($(this).text()).css('opacity', '1');

            if (list.hasClass('active')) {
                list.removeClass('active');
            }
            else {
                list.addClass('active');
            }
        });


        $('select').on('change', function (e) {
            placeholder.text(this.value);

            $(this).animate({ width: placeholder.width() + 'px' });
        });
    } */

    /* 

    4. Init Page Menu

    */

    function initPageMenu() {
        if ($('.page_menu').length && $('.page_menu_content').length) {
            var menu = $('.page_menu');
            var menuContent = $('.page_menu_content');
            var menuTrigger = $('.menu_trigger');

            //Open / close page menu
            menuTrigger.on('click', function () {
                if (!menuActive) {
                    openMenu();
                }
                else {
                    closeMenu();
                }
            });

            //Handle page menu
            if ($('.page_menu_item').length) {
                var items = $('.page_menu_item');
                items.each(function () {
                    var item = $(this);
                    if (item.hasClass("has-children")) {
                        item.on('click', function (evt) {
                            evt.preventDefault();
                            evt.stopPropagation();
                            var subItem = item.find('> ul');
                            if (subItem.hasClass('active')) {
                                subItem.toggleClass('active');
                                TweenMax.to(subItem, 0.3, { height: 0 });
                            }
                            else {
                                subItem.toggleClass('active');
                                TweenMax.set(subItem, { height: "auto" });
                                TweenMax.from(subItem, 0.3, { height: 0 });
                            }
                        });
                    }
                });
            }
        }
    }

    function openMenu() {
        var menu = $('.page_menu');
        var menuContent = $('.page_menu_content');
        TweenMax.set(menuContent, { height: "auto" });
        TweenMax.from(menuContent, 0.3, { height: 0 });
        menuActive = true;
    }

    function closeMenu() {
        var menu = $('.page_menu');
        var menuContent = $('.page_menu_content');
        TweenMax.to(menuContent, 0.3, { height: 0 });
        menuActive = false;
    }


});
</script> 


<script src="{$urls.js_url}jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/2.0.0/isotope.pkgd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prettyPhoto/3.1.6/js/jquery.prettyPhoto.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prettyPhoto/3.1.6/css/prettyPhoto.min.css" integrity="sha512-aB3UdGCt+QZdSlPCgDsJBJ+JytRb8oq/cdMEpLTaypINSyom0h5vcw2HsF1m0eZtWsetJllPtQOfCPM9UrdKYw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="{$urls.js_url}mfn.menu.js"></script>

<script src="{$urls.js_url}jquery.plugins.js"></script>
<script src="{$urls.js_url}jquery.jplayer.min.js"></script>
<script src="{$urls.js_url}animations/animations.js"></script>
<script src="{$urls.js_url}email.js"></script>
<script src="{$urls.js_url}scripts.js"></script>

<script src="{$urls.theme_assets}rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.video.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.migration.min.js"></script>
<script src="{$urls.theme_assets}rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>




<script>
    var tpj = jQuery;
    tpj.noConflict();
    var revapi55;
    tpj(document).ready(function () {
        revapi55 = tpj('#rev_slider_55_1').show().revolution({
            dottedOverlay: "none",
            delay: 8000,
            startwidth: 1180,
            startheight: 730,
            hideThumbs: 200,
            thumbWidth: 200,
            thumbHeight: 80,
            thumbAmount: 1,
            simplifyAll: "off",
            navigationType: "none",
            navigationArrows: "none",
            navigationStyle: "round",
            touchenabled: "on",
            onHoverStop: "on",
            nextSlideOnWindowFocus: "off",
            swipe_threshold: 0.7,
            swipe_min_touches: 1,
            drag_block_vertical: false,
            keyboardNavigation: "off",
            navigationHAlign: "center",
            navigationVAlign: "bottom",
            navigationHOffset: 0,
            navigationVOffset: 180,
            soloArrowLeftHalign: "right",
            soloArrowLeftValign: "bottom",
            soloArrowLeftHOffset: 90,
            soloArrowLeftVOffset: 40,
            soloArrowRightHalign: "right",
            soloArrowRightValign: "bottom",
            soloArrowRightHOffset: 40,
            soloArrowRightVOffset: 40,
            shadow: 0,
            fullWidth: "on",
            fullScreen: "off",
            spinner: "spinner3",
            stopLoop: "off",
            stopAfterLoops: 0,
            stopAtSlide: 1,
            shuffle: "off",
            autoHeight: "off",
            forceFullWidth: "off",
            hideTimerBar: "on",
            hideThumbsOnMobile: "on",
            hideBulletsOnMobile: "off",
            hideArrowsOnMobile: "off",
            hideThumbsUnderResolution: 768,
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0
        });
    });
</script>

<script>
    jQuery(window).load(function () {
        var retina = window.devicePixelRatio > 1 ? true : false;
        if (retina) {
            var retinaEl = jQuery("#logo img");
            var retinaLogoW = retinaEl.width();
            var retinaLogoH = retinaEl.height();
            retinaEl.attr("src", "{$urls.img_url}bbs/bbs_logo.png").width(retinaLogoW).height(retinaLogoH)
        }
    });

    if ( typeof jQuery.migrateMute === "undefined" ) {
        jQuery.migrateMute = true;
    }
</script>

{foreach $javascript.external as $js}
    <script type="text/javascript" src="{$js.uri}" {$js.attribute}></script>
  {/foreach}
  
  {foreach $javascript.inline as $js}
    <script type="text/javascript">
      {$js.content nofilter}
    </script>
  {/foreach}
  
  {if isset($vars) && $vars|@count}
    <script type="text/javascript">
      {foreach from=$vars key=var_name item=var_value}
      var {$var_name} = {$var_value|json_encode nofilter};
      {/foreach}
    </script>
  {/if}

<script src="{$urls.js_url}toast.js"></script>
<script src="{$urls.js_url}custom_whistlist.js"></script>


  


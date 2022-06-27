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

<script src="{$urls.js_url}jquery-2.1.4.min.js"></script>

<script src="{$urls.js_url}jquery.plugins.js"></script>
<script src="{$urls.js_url}jquery.jplayer.min.js"></script>
<script src="{$urls.js_url}animations/animations.js"></script>
<script src="{$urls.js_url}mfn.menu.js"></script>
<script src="{$urls.js_url}email.js"></script>
<script src="{$urls.js_url}scripts.js"></script>

<script src="{$urls.theme_assets}plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.migration.min.js"></script>
<script src="{$urls.theme_assets}plugins/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>




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



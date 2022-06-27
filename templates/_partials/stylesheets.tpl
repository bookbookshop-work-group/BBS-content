{foreach $stylesheets.external as $stylesheet}
    <link rel="stylesheet" href="{$stylesheet.uri}" type="text/css" media="{$stylesheet.media}">
  {/foreach}
  
  {foreach $stylesheets.inline as $stylesheet}
    <style>
      {$stylesheet.content}
    </style>
  {/foreach}
  

<style>
    .portfolio_slider_ul{
        margin-left: 15px;
        margin-right: 15px;
    }
</style>

<!-- FONTS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,400italic,700">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Patua+One:100,300,400,400italic,700">

<!-- CSS -->
<link rel="stylesheet" href="{$urls.css_url}bbs.css">
<link rel="stylesheet" href="{$urls.css_url}global.css">

<link rel="stylesheet" href="{$urls.css_url}structure.css">
<link rel="stylesheet" id='style-static' href="{$urls.css_url}be_style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" href="{$urls.theme_assets}plugins/rs-plugin/css/settings.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">




<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">




<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

    /*function initCustomDropdown() {
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
    }*/

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
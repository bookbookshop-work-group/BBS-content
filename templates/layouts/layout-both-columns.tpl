{include file='_partials/helpers.tpl'}

<!doctype html>
<html lang="{$language.locale}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames} archive -product with_aside aside_right woocommerce woocommerce-page color-blue layout-full-width header-modern sticky-header sticky-white subheader-title-left">
    <div class="super_container">
      <div id="Wrapper">
        {block name='hook_after_body_opening_tag'}
          {hook h='displayAfterBodyOpeningTag'}
        {/block}

        <div id="Header_wrapper" class="slider">
          <!-- Header -->
            <header id="Header" class="header">
              {block name='header'}
                {include file='_partials/header.tpl'}
              {/block}
            </header>
        </div>

        <main>
          {block name='product_activation'}
            {include file='catalog/_partials/product-activation.tpl'}
          {/block}        

          <section id="wrapper">
            {block name='notifications'}
              {include file='_partials/notifications.tpl'}
            {/block}

            {hook h="displayWrapperTop"}
            <div id="Content">
              <div class="content_wrapper clearfix">
                <div class="sections_group">
                  <div class="section">
                    <div class="section_wrapper clearfix">
                      <div class="items_group clearfix">
                        <div class="container">
                          <div class="column one woocommerce-content" style="margin-top:20px">
                            {* {block name='breadcrumb'}
                              {include file='_partials/breadcrumb.tpl'}
                            {/block} *}

                            {block name="left_column"}
                              <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
                                {if $page.page_name == 'product'}
                                  {hook h='displayLeftColumnProduct'}
                                {else}
                                  {hook h="displayLeftColumn"}
                                {/if}
                              </div>
                            {/block}

                            {block name="content_wrapper"}
                              <div id="content-wrapper" class="js-content-wrapper left-column right-column col-sm-4 col-md-6">
                                {hook h="displayContentWrapperTop"}
                                {block name="content"}
                                  <p>Hello world! This is HTML5 Boilerplate.</p>
                                {/block}
                                {hook h="displayContentWrapperBottom"}
                              </div>
                            {/block}

                            {block name="right_column"}
                              <div id="right-column" class="col-xs-12 col-sm-4 col-md-3">
                                {if $page.page_name == 'product'}
                                  {hook h='displayRightColumnProduct'}
                                {else}
                                  {hook h="displayRightColumn"}
                                {/if}
                              </div>
                            {/block}
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            {hook h="displayWrapperBottom"}
          </section>
          
          {block name="footer"}
            {include file="_partials/footer.tpl"}
          {/block}

          {* <footer id="Footer" class="js-footer clearfix" style="background-color: #f7f7f7;">
            
          </footer> *}

        </main>

        {block name='javascript_bottom'}
          {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
        {/block}

        {block name='hook_before_body_closing_tag'}
          {hook h='displayBeforeBodyClosingTag'}
        {/block}
      </div>  
    </div>      


    <a href="#Header">
      <div id="popup_contact"><img style="width: 40px; height: 50px;" src="{$urls.img_url}bbs/arrow-up.png" alt="arrow_up"></div>
    </a>
  </body>

</html>

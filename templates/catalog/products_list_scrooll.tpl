<div class="section full-width flv_sections_16">
  <div class="post-nav">
      <ul class="next-prev-nav">
          <h2><i> {$label} </i></h2>
      </ul>
      <a class="list-nav" href="{$allProductsLink}"><i
              class="fa fa-angle-double-right"></i>{l s='Voir plus' d='Shop.Theme.Catalog'}</a>
  </div>

  <div class="section_wrapper clearfix">
    <div class="items_group clearfix">
        <!-- One full width row-->
        <div class="column one column_portfolio_slider">
            <div class="portfolio_slider" style="margin-bottom: 20px;">
                <a class="slider_nav slider_prev themebg" href="#"><i
                        class="fa fa-angle-left"></i></a><a
                    class="slider_nav slider_next themebg" href="#"><i
                        class="fa fa-angle-right"></i></a>
                <ul class="portfolio_slider_ul " id="js-product-list">
                    {foreach from=$products item="product" key="position"}

                        <li style="width: 200px !important;" class="product">
                            {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position}
                        </li>
                    {/foreach}
                    
                </ul>
            </div>
        </div>
    </div>
  </div>
</div>
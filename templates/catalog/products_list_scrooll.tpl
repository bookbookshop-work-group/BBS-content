<div class="section full-width flv_sections_16" style="margin-bottom: 3em;">
  <div class="post-nav">
      <ul class="next-prev-nav">
          <h2><i> {$label} </i></h2>
          <a href="" style="font-size: 1.3em;">Les plus Lut</a>
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
                <ul class="portfolio_slider_ul">
                {foreach from=$products item="product" key="position"}
                    {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position}
                {/foreach}
                    
                </ul>
            </div>
        </div>
    </div>
  </div>
</div>
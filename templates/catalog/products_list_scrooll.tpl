<style>
.portfolio_slider ul li
{
    margin-right:17px !important;
}

.wishlist-button-add
{
    display:none;
}

button.special_btn_add_to_cart
{
  
  border: none;
  margin: 0;
  padding: 0;
  width: auto;
  overflow: visible;

  background: transparent;

  /* inherit font & color from ancestor */
  color: inherit;
  font: inherit;

  /* Normalize `line-height`. Cannot be changed from `normal` in Firefox 4+. */
  line-height: normal;

  /* Corrects font smoothing for webkit */
  -webkit-font-smoothing: inherit;
  -moz-osx-font-smoothing: inherit;

  /* Corrects inability to style clickable `input` types in iOS */
  -webkit-appearance: none;

}
button.special_btn_add_to_cart::-moz-focus-inner {
    border: 0;
    padding: 0;
}
button.special_btn_add_to_cart:hover
{
  background: transparent;
}

.portfolio_slider ul.product-flags
{
  opacity: 1;
}
</style>
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
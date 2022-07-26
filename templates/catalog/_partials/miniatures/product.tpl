{block name='product_miniature_item'}
  <div style="position:relative">
    <article  data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" class="js-product-miniature">
      <div class="image_frame scale-with-grid js-product">
        <div class="image_wrapper thumbnail-container">
            <a href="{$product.url}">
            {if $product.cover}
              <img
                  src="{$product.cover.bySize.home_default.url}"
                  alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                  loading="lazy"
                  class="scale-with-grid wp-post-image"
                  data-full-size-image-url="{$product.cover.large.url}"        
                  style="height: 235px !important; width: 176px !important;"
                />
            {else}
              <img
                  src="{$product.no_picture_image.bySize.home_default.url}"
                  loading="lazy"
                  class="scale-with-grid wp-post-image"
                  style="height: 235px !important; width: 176px !important;"
                />
            {/if}
            </a>
            {* width="{$product.cover.bySize.home_default.width}"
                  height="{$product.cover.bySize.home_default.height}" 
                  width="{$urls.no_picture_image.bySize.home_default.width}"
                  height="{$urls.no_picture_image.bySize.home_default.height}"
                  *}
                  

            {* {hook h='displayProductActions' product=$product} *}
            <div class="image_links double">
              {* <p class="buttons_bottom_block" style="margin-left:-3px;">
              <a href="#" >
              {l s='Add to my wishlist'}
              </a>
              </p> *}

                {* <a id="add-to-cart-or-refresh"  class="link js-product-add-to-cart" ><i class="fa fa-shopping-cart"></i></a> *}
                {* <a class="ajax_add_to_cart_button exclusive" rel="ajax_id_product_{$product.id_product|intval}" href="{$link->getPageLink('cart',false, NULL, "add&id_product={$product.id_product|intval}&token={$static_token}", false)}" title="{l s='Add to cart'}" ><i class="fa fa-shopping-cart"></i></a> *}

                
                <a>{block name='product_add_to_cart'}
                  {include file='catalog/_partials/product-add-to-cart.tpl'}
                {/block}</a>


                {* <a  id="wishlist_button"  onclick="WishlistCart('wishlist_block_list', 'add', '{$product.id_product|intval}', {$product.id_product_attribute}, 1); return false;" class="link"><i class="fa fa-heart"></i></a> *}
                <button   class="ets-wishlist-button-add add_wishlist"><i class="fa fa-heart"></i></button>
            </div>
        </div>
      </div>
      <a href="{$product.url}" style="color: #322f2f;" content="{$product.url}">
      <b class="titre" style="margin-top: 2em !important;">
        {$product.name|truncate:30:'...'}</b>
      </a>
      <br>
      {foreach from=$product['features'] item=feat}
        {if $feat.id_feature=="4" }<span class="auteur"><u>{$feat.value}</u></span><br>{/if}
      {/foreach}
      
      {block name='product_reviews'}
      {hook h='displayProductListReviews' product=$product}
      {* {hook h='DisplayProductListFunctionalButtons' product=$product} *}
      {/block}
      
      {block name='product_price_and_shipping'}
      {if $product.show_price}
        {* 
          {if $product.has_discount}
            {hook h='displayProductPriceBlock' product=$product type="old_price"}

            <span class="regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
            {if $product.discount_type === 'percentage'}
              <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
            {elseif $product.discount_type === 'amount'}
              <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
            {/if}
          {/if}

          {hook h='displayProductPriceBlock' product=$product type="before_price"}

          <span class="prix" style="color: #322f2f;" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
            {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
            {if '' !== $smarty.capture.custom_price}
              {$smarty.capture.custom_price nofilter}
            {else}
              {$product.price}
            {/if}
          </span>

          {hook h='displayProductPriceBlock' product=$product type='unit_price'}

          {hook h='displayProductPriceBlock' product=$product type='weight'}
        </div> *}
        <div class="product-price-and-shipping" style="margin-top: 5px">
          {if $product.has_discount}
            <span class="regular-price" style="text-decoration:line-through; font-weight:bold; margin-right:10px; margin-top:10px" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
          {/if}

          <span class="prix" style="color: #322f2f;" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
            {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
            {if '' !== $smarty.capture.custom_price}
              {$smarty.capture.custom_price nofilter}
            {else}
              {$product.price}
            {/if}
          </span>
        </div>
      {/if}
      {/block}

      {include file='catalog/_partials/product-flags.tpl'}
      <br>
    <article>
  </div>
{/block}

{block name='product_miniature_item'}
<li style="width: 200px !important;" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" class="js-product-miniature post-284 product type-product has-post-thumbnail isotope-item shipping-taxable purchasable product-type-simple product-cat-clothing product-cat-t-shirts outofstock">
  <div class="image_frame scale-with-grid">
      <div class="image_wrapper">
          <a href="{$product.url}">
          {if $product.cover}
            <img
                src="{$product.cover.bySize.home_default.url}"
                alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                loading="lazy"
                data-full-size-image-url="{$product.cover.large.url}"        
                width="{$product.cover.bySize.home_default.width}"
                height="{$product.cover.bySize.home_default.height}"         
              />
          {else}
            <img
                src="{$product.no_picture_image.bySize.home_default.url}"
                loading="lazy"
                width="{$urls.no_picture_image.bySize.home_default.width}"
                height="{$urls.no_picture_image.bySize.home_default.height}"             
              />
          {/if}
          </a>
          <div class="image_links double">
              <a><i class="fa fa-shopping-cart"></i></a>
              <a class="link"><i class="fa fa-heart"></i></a>
          </div>
      </div>
  </div>
  <b class="titre" style="margin-top: 2em !important; font-size: 1.2em; color:black">
  <a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a></b>
  <br>
  <span class="auteur"><u> Angelbert Moril</u></span><br>
  {block name='product_reviews'}
    {hook h='displayProductListReviews' product=$product}
  {/block}
  <br>
  {block name='product_price_and_shipping'}
    {if $product.show_price}
      <div class="product-price-and-shipping">
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

        <span class="prix price" style="color: #322f2f;" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
          {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
          {if '' !== $smarty.capture.custom_price}
            {$smarty.capture.custom_price nofilter}
          {else}
            {$product.price}
          {/if}
        </span>

        {hook h='displayProductPriceBlock' product=$product type='unit_price'}

        {hook h='displayProductPriceBlock' product=$product type='weight'}
      </div>
    {/if}
  {/block}

  {include file='catalog/_partials/product-flags.tpl'}
  <br>
</li>



{/block}

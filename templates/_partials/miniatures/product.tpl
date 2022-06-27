<li style="width: 160px !important; margin-left: 5px !important;">
  <div data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
    <div class="js-product image_frame scale-with-grid">
        <div class="image_wrapper">
            <a href="{$product.url}">
                <div class="mask"></div>
                {if $product.cover}
                    <img
                      src="{$product.cover.bySize.home_default.url}"
                      alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                      loading="lazy"
                      data-full-size-image-url="{$product.cover.large.url}"
                      class="scale-with-grid wp-post-image"
                      style="height: 235px !important; width: 176px !important;"
                    />
                {else}
                    <img
                      src="{$urls.no_picture_image.bySize.home_default.url}"
                      loading="lazy"
                      class="scale-with-grid wp-post-image"
                      style="height: 235px !important; width: 176px !important;"
                    />
                {/if}
            </a>
            <div class="image_links double">
                <a><i class="fa fa-shopping-cart"></i></a>
                <a class="link"><i
                        class="fa fa-heart"></i></a>
            </div>
        </div>
    </div>
    <b class="titre" style="margin-top: 2em !important; font-size: 1.2em;" href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</b>
    <br>
    <span class="auteur"><u> Angelbert Moril</u></span><br>
    {* <i class="fa fa-star" aria-hidden="true"
        style="color: #fdc01a;"></i>
    <i class="fa fa-star" aria-hidden="true"
        style="color: #fdc01a;"></i>
    <i class="fa fa-star" aria-hidden="true"
        style="color: #fdc01a;"></i>
    <i class="fa fa-star-o" aria-hidden="true"></i>
    <i class="fa fa-star-o" aria-hidden="true"></i> *}
    {block name='product_reviews'}
      {hook h='displayProductListReviews' product=$product}
    {/block}
    <!-- <span>3.0</span> -->

    <br><span style="color: #322f2f;" class="prix">{$product.price}</span>
  </div>
</li>




{* {block name='product_miniature_item'}
<div class="js-product product{if !empty($productClasses)} {$productClasses}{/if}">
  <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
    <div class="thumbnail-container">
      <div class="thumbnail-top">
        {block name='product_thumbnail'}
          {if $product.cover}
            <a href="{$product.url}" class="thumbnail product-thumbnail">
              <img
                src="{$product.cover.bySize.home_default.url}"
                alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                loading="lazy"
                data-full-size-image-url="{$product.cover.large.url}"
                width="{$product.cover.bySize.home_default.width}"
                height="{$product.cover.bySize.home_default.height}"
              />
            </a>
          {else}
            <a href="{$product.url}" class="thumbnail product-thumbnail">
              <img
                src="{$urls.no_picture_image.bySize.home_default.url}"
                loading="lazy"
                width="{$urls.no_picture_image.bySize.home_default.width}"
                height="{$urls.no_picture_image.bySize.home_default.height}"
              />
            </a>
          {/if}
        {/block}

        <div class="highlighted-informations{if !$product.main_variants} no-variants{/if}">
          {block name='quick_view'}
            <a class="quick-view js-quick-view" href="#" data-link-action="quickview">
              <i class="material-icons search">&#xE8B6;</i> {l s='Quick view' d='Shop.Theme.Actions'}
            </a>
          {/block}

          {block name='product_variants'}
            {if $product.main_variants}
              {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
            {/if}
          {/block}
        </div>
      </div>

      <div class="product-description">
        {block name='product_name'}
          {if $page.page_name == 'index'}
            <h3 class="h3 product-title"><a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a></h3>
          {else}
            <h2 class="h3 product-title"><a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a></h2>
          {/if}
        {/block}

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

              <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
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

        {block name='product_reviews'}
          {hook h='displayProductListReviews' product=$product}
        {/block}
      </div>

      {include file='catalog/_partials/product-flags.tpl'}
    </div>
  </article>
</div>
{/block} *}

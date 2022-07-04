{extends file=$layout}

{block name='head' append}
  <meta property="og:type" content="product">
  {if $product.cover}
    <meta property="og:image" content="{$product.cover.large.url}">
  {/if}

  {if $product.show_price}
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}">
  <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}

  <style>
    .btn-touchspin
    {
      color:black;
    }
    .btn-touchspin i
    {
      font-size: 17px;
    }
    </style>
{/block}

{block name='head_microdata_special'}
  {include file='_partials/microdata/product-jsonld.tpl'}
{/block}

{block name='content'}
  <div class="column one woocommerce-content">
  <meta content="{$product.url}">
  <div itemscope id="product-70" class="post-70 product type-product has-post-thumbnail sale shipping-taxable purchasable product-type-simple product-cat-posters instock">

      <div class="product_wrapper clearfix">
          <br><br><br>

          <!-- One Second (1/2) Column -->
          <div class="column one-second product_image_wrapper">
            {block name='product_cover_thumbnails'}
              {include file='catalog/_partials/product-cover-thumbnails.tpl'}
            {/block}
            <div class="scroll-box-arrows">
              <i class="material-icons left">&#xE314;</i>
              <i class="material-icons right">&#xE315;</i>
            </div>
          </div>
          <!-- One Second (1/2) Column -->
          <br>
          <div class="column one-second summary entry-summary">
              <h1 class="product_title entry-title" style="margin-bottom: 0;"><b> {block name='page_title'}{$product.name}{/block}</b></h1><br>
              <div class="product_meta">
              {foreach from=$product['features'] item=feat}
                {* {var_dump($feat)}
                {var_dump($feat.id_feature)} *}
                {if $feat.id_feature=="4" }
                  <span class="posted_in" style="font-size: 1.5em;">{l s="Auteur" d="Shop.Theme.Catalog"}: <a style="color: #000;">{$feat.value}</a></span>
                {/if}
              {/foreach}
                  
              </div>
              {* <div style="font-size: 20px !important;">
              <i class="fa fa-star" aria-hidden="true"
                  style="color: #fdc01a;"></i>
              <i class="fa fa-star" aria-hidden="true"
                  style="color: #fdc01a;"></i>
              <i class="fa fa-star" aria-hidden="true"
                  style="color: #fdc01a;"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i></div> *}

              {hook h='displayProductListReviews' product=$product}

              <div itemscope>
                  {block name='product_prices'}
                    {include file='catalog/_partials/product-prices.tpl'}
                  {/block}
        
                  <link itemprop="link" href="http://schema.org/InStock" />
              </div>
              <br class="flv_style_25" />
              <div  class="datetime" style="font-size: 15px">
                  <table>
                      <tr>
                          <td style="text-align: left;">{l s="Publication" d="Shop.Theme.Global" }: <b>{$product.date_add}</b></td>
                          {* <td style="text-align: left;"><b>145</b> Pages</td> *}
                      </tr>
                  </table>
              </div>
              <div>
                  <p style="color: #000;">
                  {$product.description_short nofilter}
                  </p>
              </div>
              
              {block name='product_add_to_cart'}
                {include file='catalog/_partials/product-add-to-cart.tpl'}
              {/block}
          {hook h='displayProductActions' product=$product} 

              {block name='product_additional_info'}
                {include file='catalog/_partials/product-additional-info.tpl'}
              {/block}
             
              <div class="accordion">
                  <div class="mfn-acc accordion_wrapper open1st">                                            
                        <div class="question">
                            <div class="title">
                                <i class="fa fa-plus acc-icon-plus"></i><i class="fa fa-minus acc-icon-minus"></i> {l s='Description' d='Shop.Theme.Catalog'}
                            </div>
                            <div class="answer">
                                <p style="color: #000;">
                                {if $product.description}{$product.description nofilter}{/if}
                                </p>
                            </div>
                        </div>
                        {if $product.attachments}
                          <div class="question">
                            <div class="title">
                                <i class="fa fa-plus acc-icon-plus"></i><i class="fa fa-minus acc-icon-minus"></i> {l s='Attachments' d='Shop.Theme.Catalog'}
                            </div>
                            <div class="answer">
                                <p style="color: #000;">
                                  <section class="product-attachments">
                                    <p class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</p>
                                    {foreach from=$product.attachments item=attachment}
                                      <div class="attachment">
                                        <h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
                                        <p>{$attachment.description}</p>
                                        <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                                          {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                                        </a>
                                      </div>
                                    {/foreach}
                                  </section>
                                </p>
                            </div>
                          </div>
                        {/if}
                        {foreach from=$product.extraContent item=extra key=extraKey}
                          <div class="question">
                            <div class="title">
                                <i class="fa fa-plus acc-icon-plus"></i><i class="fa fa-minus acc-icon-minus"></i> {l s='Attachments' d='Shop.Theme.Catalog'}
                            </div>
                            <div class="answer">
                                <p style="color: #000;">
                                {$extra.content nofilter}
                                </p>
                            </div>
                          </div>
                        {/foreach}
                        {block name='product_footer'}
                          {hook h='displayFooterProduct' product=$product category=$category}
                        {/block}
                  </div>
              </div>
          </div>
      </div>
      
  </div>
</div>

{/block}

<form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
  <input type="hidden" name="token" value="{$static_token}">
  <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
  <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" class="js-product-customization-id">
  <div class="product-add-to-cart js-product-add-to-cart">
    {if !$configuration.is_catalog}
      {block name='product_quantity'}
        <div class="product-quantity clearfix">
          <div class="qty quantity">
            <input
              type="number"
              name="qty"
              id="quantity_wanted"
              inputmode="numeric"
              pattern="[0-9]*"
              {if $product.quantity_wanted}
                value="{$product.quantity_wanted}"
                min="{$product.minimal_quantity}"
              {else}
                value="1"
                min="1"
              {/if}
              size="4"
              class="input-group input-text qty text"
              aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
            >
          </div>

          <div class="add">
            <button
              style="background-color: #cd3750 !important;"
              class="single_add_to_cart_button button alt"
              data-button-action="add-to-cart"
              type="submit"
              {if !$product.add_to_cart_url}
                disabled
              {/if}
            >
              <i class="material-icons shopping-cart">&#xE547;</i>
              {l s='Add to cart' d='Shop.Theme.Actions'}
            </button>
          </div>

          {hook h='displayProductActions' product=$product}
        </div>
      {/block}

      {block name='product_availability'}
        <span id="product-availability" class="js-product-availability">
          {if $product.show_availability && $product.availability_message}
            {if $product.availability == 'available'}
              <i class="material-icons rtl-no-flip product-available">&#xE5CA;</i>
            {elseif $product.availability == 'last_remaining_items'}
              <i class="material-icons product-last-items">&#xE002;</i>
            {else}
              <i class="material-icons product-unavailable">&#xE14B;</i>
            {/if}
            {$product.availability_message}
          {/if}
        </span>
      {/block}

      {block name='product_minimal_quantity'}
        <p class="product-minimal-quantity js-product-minimal-quantity">
          {if $product.minimal_quantity > 1}
            {l
            s='The minimum purchase order quantity for the product is %quantity%.'
            d='Shop.Theme.Checkout'
            sprintf=['%quantity%' => $product.minimal_quantity]
            }
          {/if}
        </p>
      {/block}
    {/if}
  </div>
</form>
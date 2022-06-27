<!-- Cart -->
<div class="cart">
    <div data-refresh-url="{$refresh_url}" class="cart_container d-flex flex-row align-items-center justify-content-end">
        <div class="cart_icon" href="{$cart_url}">
            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560918704/cart.png"
                alt="">
            <div class="cart_count"><span>{$cart.products_count}</span></div>
        </div>
        <div class="cart_content">
            <div class="cart_text" ><a>{l s='Panier' d='Shop.Theme.Checkout'}</a></div>
            <div class="cart_price" >{$cart.totals.total.value}</div>
        </div>
    </div>
</div>


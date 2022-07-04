
{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Mon Compte' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  {* <div class="row">
    <div class="links">

      <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="identity-link" href="{$urls.pages.identity}">
        <span class="link-item">
          <i class="material-icons">&#xE853;</i>
          {l s='Information' d='Shop.Theme.Customeraccount'}
        </span>
      </a>

      {if $customer.addresses|count}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="addresses-link" href="{$urls.pages.addresses}">
          <span class="link-item">
            <i class="material-icons">&#xE56A;</i>
            {l s='Addresses' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {else}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="address-link" href="{$urls.pages.address}">
          <span class="link-item">
            <i class="material-icons">&#xE567;</i>
            {l s='Add first address' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="history-link" href="{$urls.pages.history}">
          <span class="link-item">
            <i class="material-icons">&#xE916;</i>
            {l s='Order history and details' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="order-slips-link" href="{$urls.pages.order_slip}">
          <span class="link-item">
            <i class="material-icons">&#xE8B0;</i>
            {l s='Credit slips' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.voucher_enabled && !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="discounts-link" href="{$urls.pages.discount}">
          <span class="link-item">
            <i class="material-icons">&#xE54E;</i>
            {l s='Vouchers' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.return_enabled && !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="returns-link" href="{$urls.pages.order_follow}">
          <span class="link-item">
            <i class="material-icons">&#xE860;</i>
            {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {block name='display_customer_account'}
        {hook h='displayCustomerAccount'}
      {/block}

    </div>
  </div> *}


      <!-- One Fourth (1/4) Column -->
      <a href="{$urls.pages.identity}">
        <div class="column one-fourth column_how_it_works">
            <div class="how_it_works has_border">
                <div class="image"><img src="{$urls.img_url}bbs/user.png" class="scale-with-grid" alt="Step 1">
                </div>
                <h4>{l s='Profil' d='Shop.Theme.Customeraccount'}</h4>
                <div class="desc">
                </div>
            </div>
        </div>
      </a>
      <!-- One Fourth (1/4) Column -->
      <a href="{$urls.pages.addresses}">
        <div class="column one-fourth column_how_it_works">
            <div class="how_it_works has_border">
                <div class="image"><img src="{$urls.img_url}bbs/ping.png" class="scale-with-grid" alt="Step 2">
                </div>
                <h4>{l s='Adresses' d='Shop.Theme.Customeraccount'}</h4>
                <div class="desc">
                </div>
            </div>
        </div>
      </a>

      <!-- One Fourth (1/4) Column -->
      <a href="{$urls.pages.history}">
        <div class="column one-fourth column_how_it_works">
            <div class="how_it_works has_border">
                <div class="image"><img src="{$urls.img_url}bbs/historique.png" class="scale-with-grid"
                        alt="Step 3">
                </div>
                <h4>{l s='Historique' d='Shop.Theme.Customeraccount'}</h4>
                <div class="desc">
                </div>
            </div>
        </div>
      </a>
      <!-- One Fourth (1/4) Column -->
      {block name='display_customer_account'}
        {hook h='displayMyAccountBlock'}
      {/block}
      
{/block}


{block name='page_footer'}
  {block name='my_account_links'}
    <div class="row">
      <div class="text-sm-center">
        <a href="{$urls.actions.logout}" >
          {l s='Sign out' d='Shop.Theme.Actions'}
        </a>
      </div>
    </div>
  {/block}
{/block}

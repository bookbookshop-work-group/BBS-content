
{extends file='page.tpl'}

{block name='header_page_title'}
  {l s='Liste de voeux' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}	
  <div
    class="wishlist-container"
    data-url="{$url}"
    data-title="{$wishlistsTitlePage}"
    data-empty-text="{l s='No wishlist found.' d='Modules.Blockwishlist.Shop'}"
    data-rename-text="{l s='Rename' d='Modules.Blockwishlist.Shop'}"
    data-share-text="{l s='Share' d='Modules.Blockwishlist.Shop'}"
    data-add-text="{$newWishlistCTA}"
  ></div>

  {include file="module:blockwishlist/views/templates/components/modals/create.tpl" url=$createUrl}
  {include file="module:blockwishlist/views/templates/components/modals/delete.tpl" listUrl=$deleteListUrl productUrl=$deleteProductUrl}
  {include file="module:blockwishlist/views/templates/components/modals/share.tpl" url=$shareUrl}
  {include file="module:blockwishlist/views/templates/components/modals/rename.tpl" url=$renameUrl}
  {include file="module:blockwishlist/views/templates/components/toast.tpl"}
{/block}


{block name='page_footer_container'}
  <div class="wishlist-footer-links">
    <a href="{$link->getPageLink('my-account', true)|escape:'html'}"><i class="material-icons">chevron_left</i>{l s='Return to your account' d='Modules.Blockwishlist.Shop'}</a>
    <a href="{$urls.base_url}"><i class="material-icons">home</i>{l s='Home' d='Shop.Theme.Global'}</a>
  </div>
{/block}
{block name="other_hook"}{/block}
<style>
.ps_csutmersignin > *{
   margin-left:20px;
}

.ps_csutmersignin .fa {
  margin-right:2px;
}
.ps_csutmersignin .fa-text
{
  color:white;
}
.ps_csutmersignin .fa-text :hover
{
  text-decoration:underline;
}
</style>
<div class="ps_csutmersignin">

  {if $logged}
    <div class="user_icon"><i class="fa fa-user"></i></div>
    <a class="account" href="{$urls.pages.my_account}" title="{l s='Mon compte' d='Shop.Theme.Customeraccount'}" rel="nofollow"><span>{$customerName}</span></a>
    <a class="logout"  href="{$urls.actions.logout}" rel="nofollow" title="{l s='Se déconnecter' d='Shop.Theme.Customeraccount'}">{l s='Deconnexion' d='Shop.Theme.Actions'}</a>
  {else}
    <div>
      <a href="{$urls.pages.authentication}">
        <span class="fa fa-unlock-alt" aria-hidden="true"></span> 
        <span class="fa-text" >{l s="S'identifier" d="Shop.Global.Theme"}</span>
      </a>
    </div>
    <div>
      <a href="{$urls.pages.register}" > 
        <span class="fa fa-pencil-square-o" aria-hidden="true"></span>
        <span class="fa-text" >{l s="S'enregistrer" d="Shop.Global.Theme"}</span>  
      </a>
    </div>
  {/if}
</div>
{* <div class="user-info">
  {if $logged}
    <a class="logout"  href="{$urls.actions.logout}" rel="nofollow" title="{l s='Log me out' d='Shop.Theme.Customeraccount'}">{l s='Sign out' d='Shop.Theme.Actions'}</a>
    <a class="account" href="{$urls.pages.my_account}" title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow"><span>{$customerName}</span></a>
  {else}
    <a class="login" href="{$urls.pages.my_account}" rel="nofollow" title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}">{l s='Sign in' d='Shop.Theme.Actions'}</a>
  {/if}
</div> *}


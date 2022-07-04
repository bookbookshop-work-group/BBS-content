
{if $customer.is_logged}
 

	{* <li>
	<a href="{$url}">
		<span class="fa fa-heart-o" aria-hidden="true"></span> {l s="Voeux" d="Shop.Theme.Global"} </a>
	</li> *}

	<a href="{$url}">      
	<div class="column one-fourth column_how_it_works">
		<div class="how_it_works no_border">
			<div class="image"><img src="{$urls.img_url}bbs/heart.png" class="scale-with-grid" alt="Step 4">
			</div>
			<h4>{l s='Liste de vœux' d='Shop.Theme.Customeraccount'}</h4>
			<div class="desc">
			</div>
		</div>
	</div>
</a>

  
{/if}


{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Order history' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  {* <h6>{l s='Here are the orders you\'ve placed since your account was created.' d='Shop.Theme.Customeraccount'}</h6> *}
  <div class="column one column_blog">
    <div class="blog_wrapper isotope_wrapper">
        <div class="posts_group lm_wrapper classic">
  {if $orders}
    <div class="post-193 post  format-standard has-post-thumbnail  category-photography category-uncategorized  tag-mysql tag-zend post-item isotope-item clearfix">
        <div class="">
            <div class="post-desc">                
                <table>      
                  <thead>
                      <tr>
                          <th style="text-align: left !important;">{l s='Référence' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Adresse de facturation' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Mode de paiement' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Prix Total' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Lien' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Date' d='Shop.Theme.Customeraccount'}</th>
                          <th>{l s='Etat' d='Shop.Theme.Customeraccount'}</th>
                      </tr>
                  </thead>          
                  <tbody>
                    {foreach from=$orders item=order}
                      <tr>
                          <td style="text-align: left !important;">{$order.details.reference}</td>
                          <td style="text-align: left !important;">{$order.addresses.delivery.alias}</td>
                          <td style="text-align: left !important;">{$order.details.payment}</td>
                          <td style="text-align: left !important;">{$order.totals.total.value}</td>
                          <td style="text-align: left !important;"><a style="text-decoration:underline" href="{$order.details.details_url}">Détails</a></td>
                          <td style="text-align: left !important;">{$order.details.order_date}</td>
                          <td style="text-align: left !important;" colspan="3">{$order.history.current.ostate_name}</td>
                      <tr>
                    {/foreach}
                  </tbody>
                </table>
            </div>
        </div>
      </div>
    
    

    {* <table class="table table-striped table-bordered table-labeled hidden-sm-down">

      <tbody>
        {foreach from=$orders item=order}

          <tr>
            <th scope="row"</th>
            <td>{$order.details.order_date}</td>
            <td class="text-xs-right">{$order.totals.total.value}</td>
            <td class="hidden-md-down">{$order.details.payment}</td>
            <td>
              <span
                class="label label-pill {$order.history.current.contrast}"
                style="background-color:{$order.history.current.color}"
              >
                {$order.history.current.ostate_name}
              </span>
            </td>
            <td class="text-sm-center hidden-md-down">
              {if $order.details.invoice_url}
                <a href="{$order.details.invoice_url}"><i class="material-icons">&#xE415;</i></a>
              {else}
                - 
              {/if}
            </td>
            <td class="text-sm-center order-actions">
              <a href="{$order.details.details_url}" data-link-action="view-order-details">
                {l s='Details' d='Shop.Theme.Customeraccount'}
              </a>
              {if $order.details.reorder_url}
                <a href="{$order.details.reorder_url}">{l s='Reorder' d='Shop.Theme.Actions'}</a>
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table> *}


  {/if}
{/block}

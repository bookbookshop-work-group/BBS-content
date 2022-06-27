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
{extends file=$layout}

{block name='content'}

  <main id="main">
  <div class="section" id="howitworks flv_sections_16">
    <div class="section_wrapper clearfix">
      <div class="items_group clearfix">
          <!-- One full width row-->
          <br><br>
          <div class="column one column_fancy_heading">
          {block name='page_header_container'}
           <h5 class="fancy_heading" style="font-size: 42px;">{block name='page_title' hide}Mon compte{/block}</h5>
            <br>
          {/block}

          {block name='page_content_container'}
              {block name='page_content_top'}{/block}
              {block name='page_content'}
                <!-- Page content -->
              {/block}
          {/block}
      
          {block name='page_footer_container'}
            <footer class="page-footer row">
              {block name='page_footer'}
                <!-- Footer content -->
              {/block}
            </footer>
          {/block}

          </div>
        </div>
      </div>
    </div>
    <br><br><br>
  </main>

{/block}

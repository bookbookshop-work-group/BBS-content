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
{extends file='page.tpl'}


{block name='content_wrapper'}
  {hook h='displayListPoductCategory' idCategory="3"}
  {hook h='displayFeatureProductShoppingCart'}
  {hook h='displayListPoductCategory' idCategory="6"}
  {hook h='displayBestSeller'}
  {hook h='selectionproduitdumois'}
  {hook h='displayListPoductCategory' idCategory="9"}

  <div class="section flv_sections_11" style="margin-top: 30px;">
    <div class="section_wrapper clearfix">
      <div class="items_group clearfix">
        <!-- Page Title-->
        <!-- One full width row-->
        <div class="column one column_fancy_heading">
          <div class="fancy_heading fancy_heading_line">
            <h2 class="title" style="color: #E53B5D;"><b> {l s="Plus de catégories" d="Shop.Theme.Global"}</b></h2>
          </div>
        </div>

        {foreach from=Category::getHomeCategories($language.id) item=category}
          {* {if $category.id_category!="1" && $category.id_category!="2" && $category.id_parent=="2"} *}
            <!-- One Third (1/3) Column -->
            <a href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'htmlall':'UTF-8'}"
              title="{$category.name|escape:'htmlall':'UTF-8'}">
              <div class="column one-fourth column_our_team">
                <!-- Team Member Area -->
                <div class="team team_circle">
                  <div class="image_frame no_link scale-with-grid">
                    <div class="image_wrapper">
                      <img class="scale-with-grid" style="height: 250px; width: 300px;"
                        src="{$link->getCatImageLink($category.name, $category.id_category, 'category_default')|escape:'html'}"
                        alt="{$category.name|escape:'htmlall':'UTF-8'}" />
                    </div>
                  </div>
                  <div class="desc_wrapper">
                    <h4>{$category.name|escape:'htmlall':'UTF-8'}</h4>
                    <hr class="hr_color" />
                  </div>
                </div>
              </div>
            </a>
          {* {/if}
          {var_dump($category)} *}
        {/foreach}

      </div>
    </div>
  </div>


{/block}
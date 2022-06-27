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
 <li itemscope itemtype="http://schema.org/Review" class="comment odd alt thread-odd thread-alt depth-1" id="li-comment-37">
    <div id="@COMMENT_ID@" data-product-comment-id="@COMMENT_ID@" data-product-id="@PRODUCT_ID@" class="comment_container"><i class="fa fa-user-circle" style="font-size: 30px;"></i>
        <div class="comment-text">
            <div itemscope itemtype="http://schema.org/Rating" class="star-rating" title="Rated 3 out of 5">
                <span style="width:60%"><strong >3</strong> out of 5</span>
            </div>
            <p class="meta">
                <strong>@CUSTOMER_NAME@</strong> &ndash;
                <time datetime="2013-06-07T11:56:36+00:00">
                @COMMENT_DATE@
                </time>
                : <div class="grade-stars" data-grade="@COMMENT_GRADE@"></div>
            </p>
            <div class="description">
                <h4>@COMMENT_TITLE@</h4>
                <p style="color: #000;">
                  @COMMENT_COMMENT@
                </p>

                <div class="comment-buttons btn-group">
                  {if $usefulness_enabled}
                    <a class="useful-review">
                      <i class="material-icons thumb_up" data-icon="thumb_up"></i>
                      <span class="useful-review-value">@COMMENT_USEFUL_ADVICES@</span>
                    </a>
                    <a class="not-useful-review">
                      <i class="material-icons thumb_down" data-icon="thumb_down"></i>
                      <span class="not-useful-review-value">@COMMENT_NOT_USEFUL_ADVICES@</span>
                    </a>
                  {/if}
                  <a class="report-abuse" title="{l s='Report abuse' d='Modules.Productcomments.Shop'}">
                    <i class="material-icons outlined_flag" data-icon="flag"></i>
                  </a>
                </div>

            </div>
        </div>
    </div>
</li>


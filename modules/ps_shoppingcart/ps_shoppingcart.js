/**
 * 2007-2020 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */

/**
 * This module exposes an extension point through `showModal` function.
 *
 * If you want to customize the way the modal window is displayed, you need to do:
 *
 * prestashop.blockcart = prestashop.blockcart || {};
 * prestashop.blockcart.showModal = function myOwnShowModal (modalHTML) {
 *   // your own code
 *   // please not that it is your responsibility to handle the modal "close" behavior
 * };
 *
 * Warning: your custom JavaScript needs to be included **before** this file.
 * The safest way to do so is to place your "override" inside the theme main JavaScript file.
 *
 */

$(document).ready(function () {
  let myToast=null;
  $(".special_btn_add_to_cart").on("click",()=>{
    myToast=$.toast({
      heading: '',
      text: '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>',
      icon: 'info',
      position: 'top-right',
      textAlign: 'left',
      hideAfter: false
  });
  })
  prestashop.blockcart = prestashop.blockcart || {};
  // prestashop.blockcart.showModal || 
  
  prestashop.on(
    'updateCart',
    function (event) {
      var refreshURL = $('.blockcart').data('refresh-url');
      var requestData = {};
      console.log("Reason ", {
        id_customization: event.reason.idCustomization,
        id_product_attribute: event.reason.idProductAttribute,
        id_product: event.reason.idProduct,
        action: event.reason.linkAction
      })
      if (event && event.reason && typeof event.resp !== 'undefined' && !event.resp.hasError) {
        requestData = {
          id_customization: event.reason.idCustomization,
          id_product_attribute: event.reason.idProductAttribute,
          id_product: event.reason.idProduct,
          action: event.reason.linkAction
        };
      }
      if (event && event.resp && event.resp.hasError) {
        prestashop.emit('showErrorNextToAddtoCartButton', { errorMessage: event.resp.errors.join('<br/>')});
      }
      $.post(refreshURL, requestData).then(function (resp) {
        if (resp.preview) {
          $('#blockcart').replaceWith($(resp.preview));
        }

        if(resp.modal)
        {
          if(myToast)
          {

            myToast.update({
              heading:"Success",
              bgColor:"#28a745",
              textColor:"white",
              position: 'top-right',
              textAlign: 'left',
              allowToastClose: true,
              text:resp.modal,
              loader: true, 
              hideAfter: 3000, 
              showHideTransition: 'fade',
            })
            window.setTimeout(function(){
              myToast.reset();
            }, 3000)
          }
          else $.toast({
            bgColor:"#28a745",
            textColor:"white",
            position: 'top-right',
            textAlign: 'left',
            text:resp.modal
          })
        }
      }).fail(function (resp) {
        prestashop.emit('handleError', { eventType: 'updateShoppingCart', resp: resp });
      });
    }
  );
});

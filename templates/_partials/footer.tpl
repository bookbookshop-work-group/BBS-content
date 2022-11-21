<style>


#Footer a
{
    color:white ;
}


</style>


<!-- Footer-->
<footer id="Footer" class="clearfix" style="background-color: #f7f7f7;">

<!-- Footer - First area -->
<div class="widgets_wrapper footer_spec" style="background-color: #cd3750;">
  <div class="container">
      <div class="one-fourth column">
          <!-- Text Area -->
          <aside id="text-7" class="widget widget_text">
              <div class="textwidget">
                  <h4 style="color: #fff;"><b><a href="{$link->getCMSLink(4)|escape:'html'}">A propos de Nous</a></b></h4><br>
                  <div class="textwidget">
                      <ul class="list_mixed">
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$link->getCMSLink(4)|escape:'html'}">Qui sommes nous</a>
                          </li>
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$link->getCMSLink(4)|escape:'html'}">L'équipe</a>
                          </li>
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$link->getCMSLink(4)|escape:'html'}">Nos partenaires</a>
                          </li>
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$urls.pages.contact}">Nous contacter</a>
                          </li>
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$link->getCMSLink(4)|escape:'html'}">Nos récompenses</a>
                          </li>
                      </ul>
                  </div>
              </div>
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Recent Comments Area -->
          <aside class="widget widget_text">
              <h4 style="color: #fff;"><b> Aide rapide</b></h4><br>
              <div class="textwidget">
                  <ul class="list_mixed">
                      
                          <a >
                          <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                          <a href="{$urls.pages.contact}">Signaler une erreur</a>
                          </li></a>
                      <li style="color: #fff; font-size: 1.3em; padding-left: 10px;"><i class="fa fa-check" aria-hidden="true"></i>
                        <a href="{$urls.pages.contact}">Editeurs, libraires, bourses du livre? Faites-vous référencer gratuitement</a>

                      </li>
                  </ul>
              </div>
          </aside>
      </div>
      <div class="one-fourth column">
          {hook h="displayNewsLetter"}
          
      </div>
      <div class="one-fourth column">
          <!-- Text Area -->
          <aside id="text-8" class="widget widget_text">
              <h4 style="color: #fff;"><b> Suivez-nous sur les réseaux</b></h4><br>
              <div class="textwidget">
                  <a target="_blank" href="https://www.facebook.com/bookbookshop.com2019"
                      class="icon_bar icon_bar_facebook icon_bar_small"><span class="t"><i
                              class="fa fa-facebook"></i></span><span class="b"><i
                              class="fa fa-facebook"></i></span></a>
                  <a target="_blank" href="#" class="icon_bar icon_bar_instagram icon_bar_small"><span
                          class="t"><i class="fa fa-instagram"></i></span><span class="b"><i
                              class="fa fa-instagram"></i></span></a>
                  <a target="_blank" href="#" class="icon_bar icon_bar_whatsapp icon_bar_small"><span
                          class="t"><i class="fa fa-whatsapp"></i></span><span class="b"><i
                              class="fa fa-whatsapp"></i></span></a>
                  <!-- <a target="_blank" href="#" class="icon_bar icon_bar_vimeo icon_bar_small"><span class="t"><i
                              class="fa fa-vimeo"></i></span><span class="b"><i
                              class="fa fa-vimeo"></i></span></a> -->
                  <a target="_blank" href="#" class="icon_bar icon_bar_youtube icon_bar_small"><span
                          class="t"><i class="fa fa-play"></i></span><span class="b"><i
                              class="fa fa-play"></i></span></a>
              </div>
          </aside>
      </div>
  </div>
</div>
<hr style="
margin-right: auto;
margin-bottom: 4px;
margin-left: auto;
max-width: 1465px;">
<div class="footer_action"
  style="background-image: url({$urls.img_url}stripes/stripes_5_b.png) !important; background-color: #f7f7f7;">
  <div class="container">
      <!-- One full width row-->
      <div class="column"><br>
          <span class="flv_font_18"
              style="color: #da5d72; padding-top: 20px !important; padding-bottom: 20px !important;"><b>
                  Méthodes de paiement disponibles</b></span><br><br>
          <img src="{$urls.img_url}bbs/om.png" alt="">
          <img src="{$urls.img_url}bbs/momo.png" alt="">
          <img src="{$urls.img_url}bbs/cash.png" alt="">
          <img src="{$urls.img_url}bbs/pay2.png" alt="">
          <!--
                  <img src="{$urls.img_url}bbs/pay5.png" alt=""> -->
          <img src="{$urls.img_url}bbs/pay1.png" alt="">
          <img src="{$urls.img_url}bbs/paypal.png" alt="">
          <!--
                  <img src="{$urls.img_url}bbs/pay8.png" alt="">
              
                  <img src="{$urls.img_url}bbs/pay9.png" alt=""> -->
      </div>
  </div>
</div>
<!-- Footer copyright-->
<div class="footer_copy" style="background-color: #ce4057;">
  <div class="container one" style="background-color: #ce4057; color: white;">
      <div class="one-fourth column">
          <!-- Recent Comments Area -->
          <aside class="widget widget_mfn_recent_comments" >
          <a href="{$urls.pages.sitemap}">Plan du site</a> 
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Recent Comments Area -->
          <aside class="widget widget_mfn_recent_comments" >
          <a href="{$link->getCMSLink(3)|escape:'html'}">Conditions d'utilisation</a> 
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Recent posts -->
          <aside class="widget widget_mfn_recent_posts">
          <a href="{$link->getCMSLink(3)|escape:'html'}">Politique de confidentialité</a> 
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Text Area -->
          <aside id="text-7" class="widget widget_text">
          <a href="{$link->getCMSLink(2)|escape:'html'}">Respect de la vie privée</a> 
          </aside>
      </div>
      <div class="column">
          <!-- Text Area -->
          <aside id="text-8" class="widget widget_text" >
              &copy; 2022 <a target="_blank" rel="nofollow" href="http://bookbookshop.com"
                  style="color: white;">Bookookshop.com </a> Tous droits réservés. Réalisé par <b> Yaba-In</b></div>
          </aside>
      </div>
  </div>
</div>
</footer>


{* <div class="footer-container">
<div class="container">
  <div class="row">
    {block name='hook_footer'}
      {hook h='displayFooter'}
    {/block}
  </div>
  <div class="row">
    {block name='hook_footer_after'}
      {hook h='displayFooterAfter'}
    {/block}
  </div>
  <div class="row">
    <div class="col-md-12">
      <p class="text-sm-center">
        {block name='copyright_link'}
          <a href="https://www.prestashop.com" target="_blank" rel="noopener noreferrer nofollow">
            {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
          </a>
        {/block}
      </p>
    </div>
  </div>
</div>
</div> *}

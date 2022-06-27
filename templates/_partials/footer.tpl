
<div class="container">
<div class="row">
  {block name='hook_footer_before'}
    {hook h='displayFooterBefore'}
  {/block}
</div>
</div>

<!-- Footer-->
<footer id="Footer" class="clearfix" style="background-color: #f7f7f7;">
<div class="widgets_wrapper invisible">
  <div class="container">
      <div class="one-third column">
          <!-- Recent Comments Area -->
          <aside class="widget widget_text">
              <div class="col-xs-4 icon-fot">
                  <span class="fa fa-map-marker" aria-hidden="true"></span>
                  <div class="col-xs-8 text-form-footer">
                      <h3>Livraison à domicile</h3>
                  </div>
              </div>
          </aside>
      </div>
      <div class="one-third column">
          <!-- Recent posts -->
          <aside class="widget widget_mfn_recent_posts">
              <div class="col-xs-4 icon-fot"><br>
                  <!-- <span class="fa fa-refresh" aria-hidden="true"></span> -->
                  <img src="{$urls.img_url}bbs/dhl.png" alt="">
                  <div class="col-xs-8 text-form-footer">
                      <h3>Expedition internationale</h3>
                  </div>
              </div>
          </aside>
      </div>
      <div class="one-third column">
          <!-- Text Area -->
          <aside id="text-8" class="widget widget_text">
              <div class="col-xs-4 icon-fot">
                  <span class="fa fa-credit-card" aria-hidden="true"></span>
                  <div class="col-xs-8 text-form-footer">
                      <h3>Paiement Flexible </h3>
                  </div>
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
<!-- Footer - First area -->
<div class="widgets_wrapper" style="background-color: #cd3750;">
  <div class="container">
      <div class="one-fourth column">
          <!-- Text Area -->
          <aside id="text-7" class="widget widget_text">
              <div class="textwidget">
                  <h4 style="color: #fff;"><b>A propos de Nous</b></h4><br>
                  <div class="textwidget">
                      <ul class="list_mixed">
                          <li class="list_idea" style="color: #fff; "><i></i>
                              Qui sommes nous?
                          </li>
                          <li class="list_idea" style="color: #fff; ">
                              L'équipe
                          </li>
                          <li class="list_idea" style="color: #fff; ">
                              Nos partenaires
                          </li>
                          <li class="list_idea" style="color: #fff; ">
                              Nous contacter
                          </li>
                          <li class="list_idea" style="color: #fff; ">
                              Nos récompenses
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
                      <li class="list_idea" style="color: #fff; "><i></i>
                          Trouver une librairie dans votre ville
                      </li>
                      <li style="color: #fff; ">
                          <select type="select">
                              <option value="Sélectionner votre ville" selected>Sélectionner votre ville
                              </option>
                              <option value="Yaoundé">Yaoundé</option>
                              <option value="Douala">Douala</option>
                          </select>
                      </li>
                          <a href="#openModal">
                          <li class="list_idea" style="color: #fff; ">
                              Signaler une erreur
                          </li></a>
                      <li class="list_idea" style="color: #fff; ">
                          Editeurs, libraires, bourses du livre? Faites-vous référencer gratuitement 

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
               Plan du site 
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Recent Comments Area -->
          <aside class="widget widget_mfn_recent_comments" >
              Conditions d'utilisation
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Recent posts -->
          <aside class="widget widget_mfn_recent_posts">
              Politique de confidentialité
          </aside>
      </div>
      <div class="one-fourth column">
          <!-- Text Area -->
          <aside id="text-7" class="widget widget_text">
              Respect de la vie privée
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

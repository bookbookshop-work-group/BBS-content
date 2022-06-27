<!-- Search -->
<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right" data-search-controller-url="{$search_controller_url}">
    <div class="header_search">
        <div class="header_search_content">
            <div class="header_search_form_container">

                <form action="{$search_controller_url}" method="get" class="header_search_form clearfix">
                  <input type="hidden" name="controller" value="search">
                  <input type="search" name="s" required="required" class="header_search_input" style="width:100%"  value="{$search_string}" 
                    placeholder="{l s='Comment pouvons-nous vous aider aujourd\'hui ?' d='Shop.Theme.Catalog'}" aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
                    {* <div class="custom_dropdown" style="display: none;">
                        <div class="custom_dropdown_list">
                            <span class="custom_dropdown_placeholder clc">All
                                Categories</span>
                            <i class="fas fa-chevron-down"></i>
                            <ul class="custom_list clc">
                                <li><a class="clc" href="#">All Categories</a></li>
                                <li><a class="clc" href="#">Computers</a></li>
                                <li><a class="clc" href="#">Laptops</a></li>
                                <li><a class="clc" href="#">Cameras</a></li>
                                <li><a class="clc" href="#">Hardware</a></li>
                                <li><a class="clc" href="#">Smartphones</a></li>
                            </ul>
                        </div>
                    </div> *}
                    <button type="submit" class="header_search_button trans_300" value="Submit"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560918770/search.png" alt=""></button>
                </form>
            </div>
        </div>
    </div>
</div>

  {* <div class="agileits_search" >
    <form action="" method="get">
    
      <input name="s" type="search"   required="">
      <button type="submit" style="border-radius: 15 15px 15 px 15 !important;" class="btn btn-default" aria-label="Left Align">
        <span class="fa fa-search" aria-hidden="true"> </span>
      </button>
    </form>
  </div> *}

  {* <div id="search_widget" class="search-widgets" >
  <form method="get" >    
    <i class="material-icons search" aria-hidden="true">search</i>
    <input type="text" name="s"  placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}">
    <i class="material-icons clear" aria-hidden="true">clear</i>
  </form>
</div> *}

  <!-- //search -->
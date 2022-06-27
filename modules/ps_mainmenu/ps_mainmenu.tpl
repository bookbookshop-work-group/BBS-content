{function name="dropdownitem" items=[]}
  <ul >
    {foreach from=$nodes item=node}
    {* {var_dump($node)} *}
    {* {if $node.children|count == 0 }#{else}{$node.url}{/if} *}
  <li id="{$node.page_identifier}">
      {assign var=_counter value=$_counter+1}
      <a data-depth="{$depth}" href="{$node.url}" {if $node.open_in_new_window} target="_blank"{/if} {if $node.children|count > 0}data-toggle="dropdown"{/if}>
        {$node.label}
        {if $node.children|count > 0 } <i class="fas fa-chevron-down"></i>{/if}
      </a>
      {if $node.children|count > 0} 
        {dropdownitem nodes=$node.children depth=$node.depth parent=$node}
      {/if}
    </li>
  {/foreach}
  </ul>
{/function}


{* nav navbar-nav menu__list *}
{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
{if $nodes|count}
<ul class="standard_dropdown main_nav_dropdown " {if $depth == 0} id="top-menu"{/if} data-depth="{$depth}">
  {foreach from=$nodes item=node}
  {* {var_dump($node)} *}
    <li class="{if $node.current} active {/if} {if $node.children|count > 0}dropdown hassubs {/if}"  id="{$node.page_identifier}">
      {assign var=_counter value=$_counter+1}
      <a class="{if $depth > 0}nav-stylehead dropdown-toggle {/if}" data-depth="{$depth}" href="{if $node.children|count == 0 }#{else}{$node.url}{/if}" {if $node.open_in_new_window} target="_blank"{/if} {if $node.children|count > 0}data-toggle="dropdown"{/if}>
        {$node.label}
        {if $node.children|count > 0}<i class="fas fa-chevron-down"></i> {/if}
      </a>
      {if $node.children|count > 0} 
        {dropdownitem nodes=$node.children depth=$node.depth parent=$node}
      {/if}
    </li>
  {/foreach}
</ul>
{/if}
{/function}

  
  <nav class="main_nav">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="main_nav_content d-flex flex-row">
                    <!-- Categories Menu -->
                    <!-- Main Nav Menu -->
                    <div class="main_nav_menu">
							        {menu nodes=$menu.children}
                      {* <ul class="standard_dropdown main_nav_dropdown">
                          <li><a href="#">Home<i class="fas fa-chevron-down"></i></a></li>
                          <li class="hassubs">
                              <a href="#">Laptop<i class="fas fa-chevron-down"></i></a>
                              <ul>
                                  <li>
                                      <a href="#">Lenovo<i class="fas fa-chevron-down"></i></a>
                                      <ul>
                                          <li><a href="#">Lenovo 1<i
                                                      class="fas fa-chevron-down"></i></a></li>
                                          <li><a href="#">Lenovo 3<i
                                                      class="fas fa-chevron-down"></i></a></li>
                                          <li><a href="#">Lenovo 2<i
                                                      class="fas fa-chevron-down"></i></a></li>
                                      </ul>
                                  </li>
                                  <li><a href="#">DELL<i class="fas fa-chevron-down"></i></a></li>
                                  <li><a href="#">APPLE<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="#">HP<i class="fas fa-chevron-down"></i></a></li>
                              </ul>
                          </li>
                          <li class="hassubs">
                              <a href="#">Featured Brands<i class="fas fa-chevron-down"></i></a>
                              <ul>
                                  <li>
                                      <a href="#">APPLE<i class="fas fa-chevron-down"></i></a>
                                      <ul>
                                          <li><a href="#">Laptop<i
                                                      class="fas fa-chevron-down"></i></a></li>
                                          <li><a href="#">Mobiles<i
                                                      class="fas fa-chevron-down"></i></a></li>
                                          <li><a href="#">Ipads<i class="fas fa-chevron-down"></i></a>
                                          </li>
                                      </ul>
                                  </li>
                                  <li><a href="#">Samsung<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="#">Lenovo<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="#">DELL<i class="fas fa-chevron-down"></i></a></li>
                              </ul>
                          </li>
                          <li class="hassubs">
                              <a href="#">Pages<i class="fas fa-chevron-down"></i></a>
                              <ul>
                                  <li><a href="shop.html">Shop<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="product.html">Product<i
                                              class="fas fa-chevron-down"></i></a></li>
                                  <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="blog_single.html">Blog Post<i
                                              class="fas fa-chevron-down"></i></a></li>
                                  <li><a href="regular.html">Regular Post<i
                                              class="fas fa-chevron-down"></i></a></li>
                                  <li><a href="cart.html">Cart<i class="fas fa-chevron-down"></i></a>
                                  </li>
                                  <li><a href="contact.html">Contact<i
                                              class="fas fa-chevron-down"></i></a></li>
                              </ul>
                          </li>
                          <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                          <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a>
                          </li>
                      </ul> *}
                    </div>

                    <!-- Menu Trigger -->

                    <div class="menu_trigger_container ml-auto">
                        <div
                            class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                            <div class="menu_burger">
                                <div class="menu_trigger_text">menu</div>
                                <div class="cat_burger menu_burger_inner">
                                    <span></span><span></span><span></span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</nav>
<div class="blockcart cart-preview {if $cart.products_count > 0}not-empty{else}empty{/if}" data-refresh-url="{$refresh_url}">
  <div class="header">
    <a rel="nofollow" href="{$cart_url}">
      <span class="cart-icon"></span>
      <span class="cart-num-item">{$cart.products_count}</span>
      <span class="cart-text">{l s='Cart' d='Shop.Theme.Actions'}</span>
    </a>
  </div>
  <div class="body">
    <ul>
      {foreach from=$cart.products item=product}
        <li>{include 'module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}</li>
      {/foreach}
    </ul>
    <div class="cart-subtotals">
      {foreach from=$cart.subtotals item="subtotal"}
        <div class="{$subtotal.type}">
          <span class="label">{$subtotal.label}</span>
          <span class="value">{$subtotal.amount}</span>
        </div>
      {/foreach}
    </div>
    <div class="cart-total">
      <span class="label">{$cart.totals.total.label}</span>
      <span class="value">{$cart.totals.total.amount}</span>
    </div>
  </div>
</div>
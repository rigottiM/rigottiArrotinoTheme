<div class="user-info {if $logged}logged{else}not-logged{/if}">
  {if $logged}
    <a class="account" href="{$my_account_url}" title="{l s='View my customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow"><span>{$customerName}</span></a>
  {else}
    <a class="login" href="{$my_account_url}" rel="nofollow" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}">{l s='Sign in' d='Shop.Theme.Actions'}</a>
  {/if}
</div>

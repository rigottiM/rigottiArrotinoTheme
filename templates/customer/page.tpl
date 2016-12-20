{extends file='page.tpl'}

{block name='left_column'}
  <div id="left-column">
    <h2>{l s='Your account'}</h2>
    {block name='my_account_links'}
      {include file='customer/_partials/my-account-links.tpl'}
    {/block}
  </div>
{/block}

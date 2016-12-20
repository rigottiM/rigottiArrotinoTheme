<ul class="my-account-links">
	<li>
		<a href="{$urls.pages.my_account}">{l s='Back to your account' d='Shop.Theme.CustomerAccount'}</a>
	</li>

	{if $customer.addresses|count}
	<li>
		<a id="addresses-link" href="{$urls.pages.addresses}">{l s='Addresses'}</a>
	</li>
	{else}
	<li>
		<a id="address-link" href="{$urls.pages.address}">{l s='Add first address'}</a>
	</li>
	{/if}

	<li>
		<a id="identity-link" href="{$urls.pages.identity}">{l s='Information'}</a>
	</li>

	{if !$configuration.is_catalog}
	<li>
		<a id="history-link" href="{$urls.pages.history}">{l s='Order history and details'}</a>
	</li>
	{/if}

	{if !$configuration.is_catalog}
	<li>
		<a id="order-slips-link" href="{$urls.pages.order_slip}">{l s='Credit slips'}</a>
	</li>
	{/if}

	{if $configuration.voucher_enabled && !$configuration.is_catalog}
	<li>
		<a id="discounts-link" href="{$urls.pages.discount}">{l s='Vouchers'}</a>
	</li>
	{/if}

	{if $configuration.return_enabled && !$configuration.is_catalog}
	<li>
		<a id="returns-link" href="{$urls.pages.order_follow}">{l s='Merchandise returns'}</a>
	</li>
	{/if}

	{block name='display_customer_account'}
	{hook h='displayCustomerAccount'}
	{/block}
	<li>
		<a class="logout"  href="{$logout_url}" rel="nofollow" title="{l s='Log me out' d='Shop.Theme.CustomerAccount'}">{l s='Sign out' d='Shop.Theme.Actions'}</a>
	</li>

	<li>
		<a href="{$urls.pages.index}">{l s='Home' d='Shop.Theme'}</a>
	</li>
</ul>

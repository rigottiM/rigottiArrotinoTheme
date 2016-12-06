{block name='header_banner'}
	<div class="header-banner">
		{hook h='displayBanner'}
	</div>
{/block}

{block name='header_top'}
	<div class="top-header">
		<div class="burger-menu">
			<div class="burger-click-region">
				<span class="burger-menu-piece"></span>
				<span class="burger-menu-piece"></span>
				<span class="burger-menu-piece"></span>
			</div>
			<span class="burger-menu-txt">MENU</span>
		</div>
		<a class="logo" href="{$urls.base_url}" title="{$shop.name}">
			<img src="{$shop.logo}" alt="{$shop.name}">
		</a>
		<div class="text-search">
			{hook h='displaySearch'}
		</div>
		<div class="header-nav">
			{hook h='displayNav'}
		</div>
		<button class="show-text-search"></button>
	</div>
{/block}

{block name='header_bottom'}
 	<div class="bottom-header">
 	</div>
{/block}

{block name='menu-layer'}
 	<div class="menu-layer">
		<div class="menu-layer-content">
			{hook h='displayTop'}
		</div>
		<div class="menu-layer-bg"></div>
 	</div>
{/block}

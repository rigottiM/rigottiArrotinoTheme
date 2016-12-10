import $ from 'expose?$!expose?jQuery!jquery';
import BurgerMenu from './components/burger-menu';
import ShowTextSearchButton from './components/show-text-search-button';
import MenuLayerManager from './components/menu-layer';

import prestashop from 'prestashop';
import EventEmitter from 'events';

$(document).ready(() => {
	var burgerMenu = new BurgerMenu($('.burger-click-region'), $('.menu-layer')),
		showTextSearchButton = new ShowTextSearchButton($('.show-text-search'), $('.text-search')),
		menuLayerManager = new MenuLayerManager();
	
	burgerMenu.init();
	showTextSearchButton.init();
	menuLayerManager.init();
});
import $ from 'expose?$!expose?jQuery!jquery';
import BurgerMenu from './components/burger-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

$(document).ready(() => {
	var $burgerMenuEl = $('.burger-click-region'),
		$burgerMenuTarget = $('.menu-layer'),
		burgerMenu = new BurgerMenu($burgerMenuEl, $burgerMenuTarget);
	burgerMenu.init();
});
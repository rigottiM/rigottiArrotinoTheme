import $ from 'expose?$!expose?jQuery!jquery';
import BurgerMenu from './components/burger-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

$(document).ready(() => {
  let burgerMenuEl = $('.burger-click-region');
  let burgerMenu = new BurgerMenu(burgerMenuEl);
  burgerMenu.init();
});
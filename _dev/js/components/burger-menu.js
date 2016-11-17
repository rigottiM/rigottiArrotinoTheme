import $ from 'jquery';

export default class BurgerMenu {
	constructor(el) {
		this.el = el;
	}
	init() {
		var clickDelay = 500,
		clickDelayTimer = null;

		this.el.on('click', function () {
			
			if(clickDelayTimer === null) {
			
				var $burger = $(this);
				$burger.toggleClass('active');
				$burger.parent().toggleClass('is-open');

				if(!$burger.hasClass('active')) {
					$burger.addClass('closing');
				}

				clickDelayTimer = setTimeout(function () {
					$burger.removeClass('closing');
					clearTimeout(clickDelayTimer);
					clickDelayTimer = null;
				}, clickDelay);
			}
		});
	}
}

import $ from 'jquery';

export default class BurgerMenu {
	constructor(el, target) {
		this.el = el;
		this.target = target;
	}
	init() {
		var clickDelay = 500,
			clickDelayTimer = null,
			$target = this.target;

		this.el.on('click', function () {
			
			if(clickDelayTimer === null) {
			
				var $burger = $(this);
				$burger.toggleClass('active');
				$burger.parent().toggleClass('is-open');
				$target.toggleClass('is-open');

				if(!$burger.hasClass('active')) {
					$burger.addClass('closing');
					$target.addClass('closing');
				}

				clickDelayTimer = setTimeout(function () {
					$burger.removeClass('closing');
					$target.removeClass('closing');
					clearTimeout(clickDelayTimer);
					clickDelayTimer = null;
				}, clickDelay);
			}
		});
	}
}

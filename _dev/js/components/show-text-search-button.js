import $ from 'jquery';

export default class ShowTextSearchButton {
	constructor(el, target) {
		this.el = el;
		this.target = target;
	}
	init() {
		var clickDelay = 500,
			clickDelayTimer = null,
			$target = this.target;

		this.el.on('click', function () {
			$target.toggleClass('show');
			if($target.hasClass('show')){
				$target.find('input[type=text]').focus();
			}
			else{
				$target.find('input[type=text]').blur();
			}
		});
	}
}

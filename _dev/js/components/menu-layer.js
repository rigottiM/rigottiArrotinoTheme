import $ from 'jquery';

export default class menuLayerManager {
	constructor() {}
	init() {
		var $menuLayer = $(".menu-layer"),
			categorySelector = ".category",
			panelSelector = ".panel";

		/*$menuLayer.find(categorySelector).mouseenter(function() {
			console.log("enter");
			$(this).children(panelSelector).addClass("open");
		});
		$menuLayer.find(categorySelector).mouseleave(function() {
			console.log("leave");
			$(this).find(panelSelector).removeClass("open");
		});*/

		$menuLayer.find(categorySelector).hover(
			function () {
				console.log("open");
				$(this).children(panelSelector).addClass("open");
			},
			function () {
				console.log("close");
				$(this).find(panelSelector).removeClass("open");
			}
		);
	}
}
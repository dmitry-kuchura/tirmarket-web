module.exports = function () {

	let $menu = $(`[data-menu]`);
	let menuWidth = $menu.outerWidth();
    let $items = $menu.children();
    let $dropDownLink = $($items[$items.length - 1]);
    let initialWidth = $dropDownLink.outerWidth();
    let $dropDownList;

    $items.each(function (index, element) {
        initialWidth += $(element).outerWidth();

        if(++index < $items.length && initialWidth > menuWidth) {

            if($dropDownLink.find('ul').length) {
                $dropDownList = $dropDownLink.find('ul');
            } else {
                $dropDownLink.append('<ul class="dropdown-menu"></ul>');
                $dropDownList = $dropDownLink.find('ul');

                $dropDownLink.attr('data-dropdown', '');
                $dropDownLink.children('a').attr('data-dropdown-trigger', '');
            }

            $(element).appendTo($dropDownList);
		}
    });

    $menu.css({"overflow": "visible"});
};

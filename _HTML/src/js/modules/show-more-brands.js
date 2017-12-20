module.exports = function () {

    let $link_show_more_brands = $('.js-link-show-more-brands'),
        $filter_brand_item = $('.js-filter-brand-item:nth-child(n+12)');

    function showAllBrands() {
        $filter_brand_item.slideDown(350, function () {
            $filter_brand_item.css('display', 'flex');
        });
    }

    function showLessBrands() {
        $filter_brand_item.slideUp(350);
    }

    function linkShowMoreClicked() {

        if($link_show_more_brands.hasClass('clicked')){
            showLessBrands();
            $link_show_more_brands.attr('title', 'Нажмите, чтобы показать всех производителей');
            $link_show_more_brands[0].innerHTML = "Показать все";
        } else {
            showAllBrands();
            $link_show_more_brands.attr('title', 'Нажмите, чтобы показать меньше производителей');
            $link_show_more_brands[0].innerHTML = "Показать меньше";
        }

        $link_show_more_brands.toggleClass('clicked');

    }

    if($link_show_more_brands.length){
        $link_show_more_brands.on('click', linkShowMoreClicked);
    }

};

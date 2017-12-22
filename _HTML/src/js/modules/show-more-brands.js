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
            $link_show_more_brands.attr('title',  $link_show_more_brands.data('title'));
            $link_show_more_brands[0].innerHTML = $link_show_more_brands.data('text');
        } else {
            showAllBrands();
            $link_show_more_brands.attr('title', $link_show_more_brands.data('title-clicked'));
            $link_show_more_brands[0].innerHTML = $link_show_more_brands.data('text-clicked');
        }

        $link_show_more_brands.toggleClass('clicked');

    }

    $link_show_more_brands.on('click', linkShowMoreClicked);


};

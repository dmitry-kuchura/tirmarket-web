module.exports = function (context = `body`) {
    let toggleSelector = `[data-dropdown]`;
    let switchSelector = `[data-dropdown-trigger]`;
    let $allToggle = $(toggleSelector);
    let activeClassName = `is-active`;

    $(toggleSelector, context).on('click', switchSelector, (event) => {

        event.preventDefault();

        let $parentDropdown = $(event.delegateTarget);

        let $allNamespacedToggles = $allToggle.filter(function () {
            return $(this).data('dropdown') === $parentDropdown.data('dropdown');
        });

        $allNamespacedToggles.not($parentDropdown).removeClass(activeClassName);

        $parentDropdown.toggleClass('is-active');

        if (!$parentDropdown.data('blurEventAttached')) {

            event.stopPropagation();

            $parentDropdown.data('blurEventAttached', true);

            $(document).on('click.dropdown', (event) => {
                if (!$(event.target).closest(toggleSelector).length) {

                    $parentDropdown.removeClass('is-active');

                    $(document).off('click.dropdown');

                    $parentDropdown.data('blurEventAttached', false);
                }
            });
        }
    })
};

module.exports = function (context = `body`) {

	$(context).on(`click`, `[data-toggle-trigger]`, function (event) {
		event.preventDefault();

        let $this = $(this);
        let flag = $this.data('toggle-trigger');
        let textArr = $this.data('toggle-text');
        $this.toggleClass('is-active');

        if(textArr) {
            $this.text(textArr[+flag]);
            $this.data( "toggle-trigger", !flag );
        }

        let NS = $this.data(`toggle-ns`);
        let $target = $(`[data-toggle-target]`).filter(`[data-toggle-ns="${NS}"]`);

        $target.each(function (index, item) {
            let func = $(item).data(`toggle-target`);

            console.log(func);

            if(func === `slide`) {
                $(item).slideToggle(250);
            } else {
                $(item).toggle(0);
            }
        });
	});

};

module.exports = function (context = `[data-counter]`) {

	$(context).on(`click`, `[data-counter-trigger]`, function (event) {
		let $counter = $(event.delegateTarget);
		let $field = $counter.find(`[data-counter-value]`);
		let value = $field[0].value;
		let counterEvent = $(this).data(`counter-trigger`);
		let NS = $counter.data('binding'), $btn;

		if(NS) $btn = $(`[data-binding="${NS}"]`).filter(`[data-basket-trigger]`);

		if(counterEvent === `increment`) {

            $field[0].value = parseInt(value) + 1;

            if($btn.length)
            	$btn.data('count', parseInt(value) + 1);

		} else if(counterEvent === `decrement`) {

            if(value > 1) {
                $field[0].value = parseInt(value) - 1;

                if($btn.length)
                	$btn.data('count', parseInt(value) + 1);
			}

		}
	});

};

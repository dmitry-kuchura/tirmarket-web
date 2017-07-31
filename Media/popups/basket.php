<div class="modal modal--basket">

    <simple-basket data-vue inline-template>

        <div class="basket" >
            <div class="load-bar" :class="{'load-bar--visible': load}">
                <div class="load-bar__item"></div>
                <div class="load-bar__item"></div>
                <div class="load-bar__item"></div>
            </div>

            <div class="basket__header">
                <div class="title title--md">Товары в корзине</div>
            </div>

            <basket-item v-for="item in products" :item="item" :key="item.id" @update="update"></basket-item>

            <div class="basket__footer">
                <div class="_flex _flex-column">
                    <div class="_col-auto">Итого: <span v-html="totalCount"></span> товара на сумму <span class="basket__total"><span v-html="totalPrice"></span> грн.</span></div>
                </div>

                <div class="_flex _justify-center _mt-3">
                    <a href="order.html" class="button">Оформить заказ</a>
                </div>
            </div>
        </div>

    </simple-basket>

</div>
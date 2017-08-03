<?php use Core\HTML; ?>
<div class="_flex _grid-space-4 _justify-between">
    <div class="_col-12 _lg-col-6 _xl-col-5">
        <div class="title _mb-3">Оформление заказа</div>
        <form id="steep-one" class="_mb-5" action="javascript:void(0);" data-form data-ajax="firstStepOrder">
            <div class="title title--md _mb-2">ШАГ 1. Контактные данные</div>
            <div class="form-label">Ваше имя и фамилия <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="text" class="form-element__input" value="<?php echo $user->name ? $user->name : ''; ?>" data-name="name" name="name" data-rule-minlength="3" required>
            </div>
            <div class="form-label">Контактный телефон <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="tel" class="form-element__input" value="<?php echo $user->phone ? $user->phone : ''; ?>" data-name="phone" name="phone" data-rule-phoneua="true" required>
            </div>
            <div class="form-label">Укажите свой Email <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" value="<?php echo $user->email ? $user->email : ''; ?>" data-name="email" name="email" data-rule-email="true" required>
            </div>
            <div class="form-label">Город <i>*</i></div>
            <div class="form-element _mb-4">
                <input type="text" class="form-element__input" value="<?php echo $user->address ? $user->address : ''; ?>" data-name="city" name="city" required>
            </div>
            <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
            <button class="button _pl-5 _pr-5" type="submit">
                <span>Продолжить</span>
            </button>
        </form>
        <form id="steep-two" class="_hide" action="javascript:void(0);" data-form data-ajax="secondStepOrder">
            <div class="title title--md _mb-3">ШАГ 2. Доставка и оплата</div>
            <div class="_flex _grid-3 _grid-space-4 _mb-2">
                <div class="form-element form-element--radio _mb-4">
                    <label>
                        <input type="radio" name="delivery" data-name="delivery" value="1" required> <i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-1.png', false); ?>" alt="">
                            <span>Новая почта</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label><input type="radio" name="delivery" data-name="delivery" value="2" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-2.png', false); ?>" alt="">
                            <span>МистЭкспресс</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label>
                        <input type="radio" name="delivery" data-name="delivery" value="3" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-3.png', false); ?>" alt="">
                            <span>ИнТайм</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label>
                        <input type="radio" name="delivery" data-name="delivery" value="4" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-4.png', false); ?>" alt="">
                            <span>Автолюкс</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label><input type="radio" name="delivery" data-name="delivery" value="5" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-5.png', false); ?>" alt="">
                            <span>Гюнсел</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label>
                        <input type="radio" name="delivery" data-name="delivery" value="6" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <div class="delivery-item">
                            <img src="<?php echo HTML::media('pic/delivery-6.png', false); ?>" alt="">
                            <span>САТ</span>
                        </div>
                    </label></div>
                <div class="form-element form-element--radio _mb-4">
                    <label>
                        <input type="radio" name="delivery" data-name="delivery" value="7" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <span><?php echo __('Самовывоз'); ?></span>
                    </label>
                </div>
            </div>
            <div class="notification _mb-5">Товар может быть на разных складах</div>
            <div class="title title--md _mb-2"><?php echo __('Оплата'); ?></div>
            <div class="_flex _grid-space-4 _mb-4">
                <div class="form-element form-element--radio">
                    <label>
                        <input type="radio" name="payment" data-name="payment" value="1" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <span><?php echo __('Наличными'); ?></span>
                    </label>
                </div>
                <div class="form-element form-element--radio">
                    <label>
                        <input type="radio" name="payment" data-name="payment" value="2" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i>
                        <span><?php echo __('Банковской картой'); ?></span>
                    </label>
                </div>
                <div class="form-element form-element--radio">
                    <label>
                        <input type="radio" name="payment" data-name="payment" value="3" required><i>
                            <svg>
                                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                     xlink:href="<?php echo HTML::media('icons/icons.svg#check', false); ?>"></use>
                            </svg>
                        </i><span><?php echo __('Безналичный расчёт'); ?></span>
                    </label>
                </div>
            </div>
            <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
            <button class="button _pl-5 _pr-5" type="submit"><span><?php echo __('Подтверждаю'); ?></span></button>
        </form>
    </div>
    <div class="_col-12 _lg-col-6 _xl-col-5">
        <simple-basket data-vue inline-template>
            <div class="basket">
                <div class="load-bar" :class="{'load-bar--visible': load}">
                    <div class="load-bar__item"></div>
                    <div class="load-bar__item"></div>
                    <div class="load-bar__item"></div>
                </div>
                <div class="basket__header">
                    <div class="title title--md"><?php echo __('Товары в корзине'); ?></div>
                </div>
                <basket-item v-for="item in products" :item="item" :key="item.id"
                             @update="update"></basket-item>
                <div class="basket__footer">
                    <div class="_flex _flex-column">
                        <div class="_col-auto"><?php echo __('Итого'); ?>: <span v-html="totalCount"></span> товара на
                            сумму
                            <span class="basket__total"><span v-html="totalPrice"></span></span></div>
                    </div>
                </div>
            </div>
        </simple-basket>
    </div>
</div>
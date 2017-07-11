<div class="modal modal--sm">
    <div data-tab-content="sing-in" data-tab-ns="auth" class="is-active">
        <div class="title title--md _mb-3">Войти в личный кабинет</div>

        <form class="" data-form>
            <div class="form-label">Укажите свой Email <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" name="mail" data-rule-email="true" required />
            </div>

            <div class="form-label">Пароль <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="password" class="form-element__input" name="pass" data-rule-password="true" required />
            </div>

            <div class="_mb-3">
                <a href="#" data-tab-trigger="forgot" data-tab-ns="auth">Забыли пароль?</a>
            </div>

            <div class="form-element form-element--check _mb-3">
                <label>
                    <input type="checkbox" name="remember" />
                    <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#check"></use></svg></i>
                    <span>Запомнить меня</span>
                </label>
            </div>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span>Войти</span></button>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-up" data-tab-ns="auth">Зарегистрироваться</a>
                </div>
            </div>
        </form>
    </div>

    <div data-tab-content="sing-up" data-tab-ns="auth">
        <div class="title title--md _mb-3">Зарегистрироваться</div>

        <form class="" data-form>
            <div class="form-label">Укажите свой Email <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" name="mail" data-rule-email="true" required />
            </div>

            <div class="form-label">Пароль <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="password" class="form-element__input" name="pass" data-rule-password="true" required />
            </div>

            <div class="_flex _justify-between _items-center _mb-3">
                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-in" data-tab-ns="auth">Войти</a>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="forgot" data-tab-ns="auth">Забыли пароль?</a>
                </div>
            </div>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span>Зарегистрироваться</span></button>
                </div>
            </div>
        </form>
    </div>

    <div data-tab-content="forgot" data-tab-ns="auth">
        <div class="title title--md _mb-3">Забыли пароль?</div>

        <form class="" data-form>
            <div class="form-label">Укажите свой Email <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" name="mail" data-rule-email="true" required />
            </div>

            <div class="_flex _justify-between _items-center _mb-3">
                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-in" data-tab-ns="auth">Войти</a>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-up" data-tab-ns="auth">Зарегистрироваться</a>
                </div>
            </div>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span>Отправить</span></button>
                </div>
            </div>
        </form>

    </div>
</div>
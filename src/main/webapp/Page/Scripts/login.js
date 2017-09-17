$(function () {
    H_login = {};
    H_login.openLogin = function () {
        $('.reg-header a').click(function () {
            $('.reg').show();
            $('.reg-bg').show();
        });
    };
    H_login.closeLogin = function () {
        $('.close-reg').click(function () {
            $('.reg').hide();
            $('.reg-bg').hide();
        });
    };

    H_login.run = function () {
        this.closeLogin();
        this.openLogin();

    };
    H_login.run();
});
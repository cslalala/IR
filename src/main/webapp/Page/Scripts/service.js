var errorFlag = 0;
function Service(url) {
    this.rootUrl = url;
    this.successHandler = function (response, resolve) {//状态码为200的错误码解析
        // resolve(response);
        if (response.success) {
            resolve(response);
        } else {
            //在这里可以对success===false的错误码进行解析
            if (response.errCode === 10199) {
                if ($.showErrorPage()) {
                    return;
                }
            }
            resolve(response);
        }
    };
    this.errorHandler = function (jqXHR) {
        if (jqXHR.responseJSON != null) {
            if (jqXHR.errCode === 10110) {
                $.showMsg(jqXHR.responseJSON.msg, function () {
                    $.changePage("login.html");
                });
                return;
            }

            if (jqXHR.errCode === 10199) {
                if ($.showErrorPage()) {
                    return;
                }
            }

            var msg = jqXHR.responseJSON.msg;
            if (msg != null) {
                if (jqXHR.responseJSON.errShow) {
                    $.showMsg(msg);
                }
            }
            else {
                $.showMsg("服务器异常!");
            }
        }
        else {
            $.showMsg("服务器异常!");
        }
    }
    this.complete = function () {

    }
    this.errorAlert = function (jqXHR) {
        $.showMsg(jqXHR.responseJSON.msg);
    }
};
Service.prototype = {

    constructor: Service,

    //get jsonP data
    getJsonP: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            async: false,
            jsonpCallback: 'jsonCallback',
            cache: false,
            type: 'GET',
            url: this.rootUrl + '?' + $.param(param),
            contentType: "application/json",
            dataType: 'jsonp',
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    //find
    get: function (param, callback, errorCallback) {
        $.ajax({
            cache: false,
            type: 'GET',
            url: this.rootUrl + '?' + $.param(param),
            dataType: "text",
            success: callback,
            error: errorCallback
        });
    },

    //find
    getAllAsync: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'GET',
            url: this.rootUrl + '?' + $.param(param),
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            async: false,
            error: this.errorHandler
        });
    },

    //find data by id
    getById: function (id, data, callback, errorCallBack) {
        var successHandler = this.successHandler;
        if (typeof data === "function") {
            callback = data;
            data = null;
        }
        $.ajax({
            cache: false,
            type: 'GET',
            url: this.rootUrl + '/' + id,
            data: data,
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    getByIdAsync: function (id, data, callback) {
        var successHandler = this.successHandler;
        if (typeof data === "function") {
            callback = data;
            data = null;
        }
        $.ajax({
            cache: false,
            type: 'GET',
            url: this.rootUrl + '/' + id,
            data: data,
            async: false,
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    //add
    post: function post(param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'POST',
            contentType: 'application/json',
            url: this.rootUrl,
            dataType: "json",
            data: JSON.stringify(param),
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler,
            complete: this.complete
        });
    },
    addSync: function add(param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'POST',
            contentType: 'application/json',
            url: this.rootUrl,
            dataType: "json",
            data: JSON.stringify(param),
            async: false,
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler,
            complete: this.complete
        });
    },


    //update
    update: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'PUT',
            contentType: 'application/json',
            url: this.rootUrl + '/' + param.id,
            dataType: "json",
            data: JSON.stringify(param),
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    //update
    updateEx: function (urlparam, param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'PUT',
            contentType: 'application/json',
            url: this.rootUrl + '/' + urlparam,
            dataType: "json",
            data: JSON.stringify(param),
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    //delete
    remove: function (id, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'DELETE',
            url: this.rootUrl + '/' + id,
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    /**
     *    invoiceService
     */
    getInvoiceByAccountMenuId: function (id, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'GET',
            url: this.rootUrl + '/accountmenu/' + id,
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },
    invoiceExpressUpdate: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'POST',
            contentType: 'application/json',
            url: this.rootUrl + '/' + "update",
            dataType: "json",
            data: JSON.stringify(param),
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },

    /**
     * signLogService
     */
    getReport: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'POST',
            contentType: 'application/json',
            url: this.rootUrl + "/report",
            dataType: "json",
            data: JSON.stringify(param),
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },
    getReportByGroup: function (param, callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'GET',
            contentType: 'application/json',
            url: this.rootUrl + "/report/usergroup" + '?' + $.param(param),
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    },
    getAccountTags: function (callback) {
        var successHandler = this.successHandler;
        $.ajax({
            cache: false,
            type: 'GET',
            contentType: 'application/json',
            url: this.rootUrl + "/getTags",
            dataType: "json",
            success: function (response) {
                successHandler(response, callback);
            },
            error: this.errorHandler
        });
    }
};
$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
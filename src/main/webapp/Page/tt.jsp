<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ICA Mode Two Name</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="./Content/lesspass.min.css">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <link href="./Content/style2.css" rel="stylesheet"/>
    <link href="./Content/default.css" rel="stylesheet"/>
    <link href="./Content/navtop.css" rel="stylesheet"/>
    <link href="./Content/footer.css" rel="stylesheet"/>
    <link href="./Content/home.css" rel="stylesheet"/>
    <link href="./Content/style.css" rel="stylesheet"/>
    <link href="./Content/loginDialog.css" rel="stylesheet"/>
    <link href="./Content/banner.css" rel="stylesheet"/>

    <link href="./Content/modeStyle.css" rel="stylesheet"/>


    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


    <script src="./Scripts/jquery-1.11.2.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>

    <!-- Latest compiled and minified Locales -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="./Scripts/responsive-nav.js"></script>
    <script src="./Scripts/login.js"></script>
    <script src="./Scripts/layout.js"></script>
    <script src="./Scripts/analytics.js"></script>

    <script src="./Scripts/jquery.validate.js"></script>
    <script src="./Scripts/jquery.validate.unobtrusive.js"></script>
    <!-- 多选框的js,css -->
    <script src="./Scripts/service.js"></script>
    <script src="./Scripts/bootstrap-select.min.js"></script>
    <%--上传文件--%>
    <script src="./Scripts/jquery.iframe-transport.js" type="text/javascript"></script>
    <script src="./Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="./Scripts/jquery.fileupload.js" type="text/javascript"></script>


    <link rel="stylesheet" href="./Content/bootstrap-select.min.css">
    <style type="text/css">
        .cube1, .cube2 {
            background-color: #f0ad4e;
            width: 30px;
            height: 30px;
            position: relative;
            top: 0;
            left: 0;

            -webkit-animation: cubemove 1.8s infinite ease-in-out;
            animation: cubemove 1.8s infinite ease-in-out;
        }

        .cube2 {
            -webkit-animation-delay: -0.9s;
            animation-delay: -0.9s;
        }

        .caret {
            display: none;
        }

        @-webkit-keyframes cubemove {
            25% {
                -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5)
            }
            50% {
                -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg)
            }
            75% {
                -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5)
            }
            100% {
                -webkit-transform: rotate(-360deg)
            }
        }

        @keyframes cubemove {
            25% {
                transform: translateX(42px) rotate(-90deg) scale(0.5);
                -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
            }
            50% {
                transform: translateX(42px) translateY(42px) rotate(-179deg);
                -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
            }
            50.1% {
                transform: translateX(42px) translateY(42px) rotate(-180deg);
                -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
            }
            75% {
                transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
                -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
            }
            100% {
                transform: rotate(-360deg);
                -webkit-transform: rotate(-360deg);
            }
        }
        li.suo{
            margin-left: 10px;
        }
        .result-div {
            padding: 5px;
            border: #eee;
            background: #fff;
        }

        .result-div:hover {
            background: #d6e0df;
        }

        .result-tile {
            font-size: 16px;
        }

        .result-description {
            font-size: 12px;
            display: block;
        }

        .modal {
            display: none; /* 默认隐藏 */
            position: fixed; /* 根据浏览器定位 */
            z-index: 1; /* 放在顶部 */
            left: 0;
            top: 0;
            width: 100%; /* 全宽 */
            height: 100%; /* 全高 */
            overflow: auto; /* 允许滚动 */
            background-color: rgba(0, 0, 0, 0.4); /* 背景色 */
        }

        /*模态框内容*/
        .modal-content {
            display: flex; /*采用flexbox布局*/
            flex-direction: column; /*垂直排列*/
            position: relative;
            background-color: #fefefe;
            margin: 25% auto; /*距顶部25% 水平居中*/
            padding: 20px;
            border: 1px solid #888;
            width: 70%;
            animation: topDown 0.4s; /*自定义动画，从模态框内容上到下出现*/
        }

        @keyframes topDown {
            from {
                top: -300px;
                opacity: 0
            }
            to {
                top: 0;
                opacity: 1
            }
        }

        /*模态框头部*/
        .modal-header {
            display: flex; /*采用flexbox布局*/
            flex-direction: row; /*水平布局*/
            align-items: center; /*内容垂直居中*/
            justify-content: space-between;
        }

        /*关闭X 样式*/
        .close {
            color: #aaa;
            float: right;
            font-size: 21px;
            font-weight: bold;
        }

        .close:hover {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        .close-pos{
            margin-top:0px;
            margin-right:0px;
        }
        .modal-content-change{
            padding-top:0px;
            padding-left:5px;
            padding-right:5px;
        }
        th.color{
            background-color: #fcf8e3;
        }
        .col-xs-2-change{
            padding-left:0px;
        }
    </style>
</head>

<body onload="AdjustLayout();" style="background-color: #eceeef">
<div class="modal fade" id="Hint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_hint"data-backdrop="static">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change" style="width: 80%;">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-hint">x</a>
            <div class="modal-header" style="border: none;">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>--%>
                <p class="modal-title" id="myModalLabel_hint">Have you ever seen the manual and know how to do it?</p>
            </div>
            <div class="modal-footer" style="margin-top:15px; margin-bottom:10px;">
                <button type="button" class="btn btn-primary" data-dismiss="modal" style="margin-left: -10px;background-color:white; color:black; border-color:#ccc;" id="link2manuel" onclick="window.open('Manuel.jsp')">No, I want
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" style="margin-left: 15px;" data-toggle="modal" data-target="#myModal_querySet">Yes, I have
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal_querySet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modalQuerySet">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>--%>
                <h4 class="modal-title" id="myModalLabel">Query Set</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <div class="form-group" style="padding-left:20px; ">
                        <label for="dataSelect" style="margin-left: 15px;">Data Select</label>
                        <div class="col-xs-9" style="margin-left:15px; padding-left:0px;">
                            <select name="dataSelection" id="dataSelect" placeholder="ggGG" class="form-control">
                                <option value="disk1-2"> disk1-2</option>
                                <option value="1"> 222222</option>
                                <option value="1"> 333333</option>
                                <option value="1"> 444444</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" style="padding-left:20px; margin-top:55px;">
                        <label for="querytagpath" style="margin-left: 15px;">Weighting Model</label>
                        <div class="col-xs-9" style="margin-left:15px; padding-left:0px;">
                            <select name="WeightModel" id="WeightModel" placeholder="ggGG" class="form-control">
                                <option value="TF_IDF"> TF-IDF</option>
                                <option value="1"> 2</option>
                                <option value="1"> 1</option>
                                <option value="1"> 1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top:55px; padding-left:20px;">
                        <label for="querydocumenpath" style="margin-left: 15px;">Query Document Path</label>
                        <div class="col-xs-8" style="margin-left: 0px; padding-right: 0px;">
                            <input class="form-control" id="querydocumenpathShow" placeholder="query document path">
                            <input class="form-control hidden" type="file"
                                   name="querydocumenpath" id="querydocumenpath">
                        </div>
                        <div class="col-xs-2 col-xs-2-change">
                            <button class="btn btn-default" id="querydocumentpathget" type="button"
                                    style="margin-left: 0px;">...
                            </button>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top:55px; padding-left: 20px;">
                        <label for="querytagpath" style="margin-left: 15px;">Query Tag Path</label>
                        <div class="col-xs-8" style="margin-left:0px; padding-right:0px;">
                            <input class="form-control" id="querytagpathShow" placeholder="query tag path">
                            <input class="form-control hidden" type="file"
                                   id="querytagpath" name="querytagpath">
                        </div>
                        <div class="col-xs-2 col-xs-2-change" style="margin-left:0px;">
                            <button class="btn btn-default" id="querytagpathget" type="button">...</button>
                        </div>
                    </div>
                    <%--<div class="form-group" style="margin-top:55px; padding-left: 20px;">--%>
                    <%--<label class="" for="queryresultpath" style="margin-left: 15px;">Query Result Path</label>--%>
                    <%--<div class="col-xs-10" style="margin-left:0px;">--%>
                    <%--<input class="form-control" id="queryresultpathShow" placeholder="query result path"--%>
                    <%--style="width:80%;">--%>
                    <%--<input class="form-control hidden" type="file"--%>
                    <%--id="queryresultpath" name="queryresultpath">--%>
                    <%--</div>--%>
                    <%--<div class="col-xs-2" style="margin-left:-74px;">--%>
                    <%--<button class="btn btn-default" id="queryresultpathget" type="button">...</button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </form>
            </div>
            <div class="modal-footer" style="margin-top:15px; margin-bottom:10px;">
                <button type="button" class="btn btn-primary" style="margin-left: -10px; background-color:white; color:black; border-color:#ccc;" id="Retrieve">Retrieve
                </button>
                <button type="button" class="btn btn-primary"  style="margin-left: 15px; background-color:#d62323;border-color:#d62323"  id="stop_nextStepToEvaluate">Stop
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal_evaluate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_dataset" data-backdrop="static" style="display: none;">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modalEvaluate">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>--%>
                <h4 class="modal-title" id="myModalLabel_evaluationSet">Evaluation Set</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <div class="form-group" style="padding-left:20px;">
                        <label for="evaluationdocumentpath" style="margin-left: 15px;">Evaluation Document Path</label>
                        <div class="col-xs-8" style="margin-left: 0px; padding-right:0px;">
                            <input class="form-control" id="evaluationdocumentpathshow" placeholder="evaluation document path">
                            <input class="form-control hidden" type="file"
                                   name="datadoucumentpath" id="evaluationdocumentpath">
                        </div>
                        <div class="col-xs-2 col-xs-2-change">
                            <button class="btn btn-default" id="evaluationdocumentpathget" type="button"
                                    style="margin-left: 0px;">...
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer" style="margin-top:15px; margin-bottom:10px;">
                <button type="button" class="btn btn-primary" style="margin-left: -10px; background-color:white; color:black; border-color:#ccc;" id="Evaluate">Evaluate
                </button>
            </div>
        </div>
    </div>
</div>
<div class="nav-top">
    <ul>
        <li>
            <a href="Home.jsp" style="text-decoration: none;">HOME</a>
        </li>
        <li>
            <a href="Introduction.jsp" style="text-decoration: none;">INTRODUCTION</a>
        </li>
        <li>
            <a href="Manuel.jsp" style="text-decoration: none;">MANUAL</a>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-bottom: 0px; padding-top: 0px; text-decoration: none;" id="menu">
                API
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" style="width: inherit;text-align: left; " id="api-menu">
                <li class="suo"><button type="button" class="btn btn-default" style="border-color: #fff" id="modeOne">MODE ONE NAME</button></li>
                <li class="suo"><button type="button" class="btn btn-default" style="border-color: #fff" id="modeTwo">MODE TWO NAME</button></li>
                <li class="suo"><button type="button" class="btn btn-default" style="border-color: #fff" id="modeThree">MODE THREE NAME</button></li>
            </ul>
        </li>
        <li>
            <a href="https://concept.research.microsoft.com/Home/Download" style="text-decoration: none;">DOWNLOAD</a>
        </li>
        <li>
            <button type="button" class="btn btn-default" id="log_state" style="padding-top:2px;font-size:16px; line-height:1.1; font-weight:500;border:none;background-color:#f1f1f1; ">Log In</button>
            <%--<a href="login.jsp" id="log_state">Log In</a>--%>
        </li>
    </ul>
</div>
<div id="banner">
    <div id="banner-bglayer-noHome">
        <div id="concept">
            <div id="banner-title"> &nbsp;&nbsp;&nbsp;Information Retrieval
                <!-- and Concept Tagging <sup class="rightcorner">Preview</sup></div>-->
                <!-- <%--<div id="banner-title2" >For Short Text Understanding</div>--%> -->
            </div>
        </div>
    </div>
</div>
<div class="homedisplay">
    <div class="homecontent2" style="padding-left: 0px;">
        <div class="tilecontainer">
            <div class="tile toptile">
                <div id="topimg"></div>
                <h2>Mode TWO Name</h2>
                <p style="font-size: large">In this mode, we will provide dataSet, what you need to do is the first
                    choosing the dataSet
                    which you want to indexed and choosing retrieval model, the second setting query,click "Retrieve"
                    button,
                    you will get the result below. Only after you get the result, and fill the "Evaluation File Path"
                    with valid
                    content, click "Evaluate" button,you will get the evaluation answer.</p>
            </div>

            <div class="container">
                <div class="jumbotron" style="padding-left: 10px; padding-top: 30px; padding-right: 10px; padding-bottom: 10px;">
                    <div class="row">
                        <button type="button" class="btn btn-primary" style="background-color:#F6753F; width:150px; height:40px;border:0px none #F6753F; font-size: larger;
                        font-size: larger;" id="start" >start</button>
                    </div>
                </div>

                <div class="jumbotron" id="evaluate-result" style="margin-top: 10px;display: block;padding-bottom: 0px;padding-left: 10px;padding-right: 10px;">
                    <p id="evaluate-result-title" style="font-size: 15px;background: #f0ad4e;margin-bottom: 0;padding-left:10px;padding-top:5px;
                    padding-bottom: 5px;">Evaluate Result:</p>
                    <p style="font-size: 15px;margin-top: 0;border-right: 1px solid #CEEBBE; border-left: 1px solid #CEEBBE" id="evaluate-result-data"></p>
                    <div class="spinner" id="evaluate-result-waiting">
                        <div class="cube1"></div>
                        <div class="cube2"></div>
                    </div>
                </div>
                <div class="jumbotron" id="result" style="margin-top: 10px; padding: 10px;">
                    <p id="result-data-title" style="font-size: 15px;background: #f0ad4e;margin-bottom: 0;padding-left:10px;padding-top:5px;
                    padding-bottom: 5px;">
                        Retrieval Result:</p>
                    <p id="result-data"
                       style="font-size: 15px;margin-top: 0;border-right: 1px solid #CEEBBE; border-left: 1px solid #CEEBBE"></p>
                    <div class="spinner" id="waiting">
                        <div class="cube1"></div>
                        <div class="cube2"></div>
                    </div>
                </div>
            </div>
            <div><i style="font-size: large;"><Strong>Notes</Strong>: If you have no idea of how to using this mode, you
                can see details in "<strong>MANUAL</strong>". If you want to know more information about dataSet in our
                system, you can click "<strong>DOWNLOAD</strong>", more introduction will be presented.</i></div>
        </div>
    </div>
</div>
</body>
<script>
    //下拉框
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    })
    //start按钮
    var $start = $("#start");
    $("#start").click(function(){
        var text = $(this).text();
        if(text == "start"){
            $("#Hint").modal({show:true});
        }
        else if(text == "Retrieving..." || text == "Retrieve Finished"){
            $("#myModal_querySet").modal({show:true});
        }
        else if(text == "All Finished"){
            $("#myModal_evaluate").modal({show:true});
        }
    })
    //query模态框设置
    var $retrieve = $("#Retrieve");
    var $stop_nextStepToEvaluate = $("#stop_nextStepToEvaluate");
    //一开始检索和stop_nextStepToEvaluate都是不能使用的
    $retrieve.prop("disabled", true);
    $stop_nextStepToEvaluate.prop("disabled", true);

    //    上传文件，没上传一次文件都得看一下所有input的框中都有值，都有值的话就可以点击retrieve按钮
    function checkRetrieval() {
        $("#stop_nextStepToEvaluate").prop("disabled", true)
        var fileUploadCounter = 0;
        if($("#querydocumenpathShow").val() != ""){
            fileUploadCounter++;
        }
        if($("#querytagpathShow").val() != ""){
            fileUploadCounter++;
        }
        if (fileUploadCounter == 2) {
            $retrieve.prop("disabled", false);
            $stop_nextStepToEvaluate.prop("disabled", true);
        }
    }
    //模擬用戶點擊按鈕
    $("#querydocumentpathget").click(function () {
        //模拟点击
        $('#querydocumenpath').click();
    });
    $("#querytagpathget").click(function () {
        $('#querytagpath').click();
    });
    $('#querydocumenpath').fileupload({
        url: "/receive",
        dataType: 'text',
        add: function (e, data) {
            data.formData = {tt: 3};
            $("#querydocumenpathShow").val(data['files'][0]['name'])
            data.submit();
            $("#querydocumentpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
        },
        done: function (e, data) {
            checkRetrieval();
            $("#querydocumentpathget").html('...');
        }
    });
    $('#querytagpath').fileupload({
        url: "/receive",
        dataType: 'text',
        add: function (e, data) {
            data.formData = {tt: 4};
            $("#querytagpathShow").val(data['files'][0]['name']);
            data.submit();
            $("#querytagpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
        },
        done: function (e, data) {
            checkRetrieval();
            $("#querytagpathget").html('...');
        }
    });
    //改变stop_nextStepToEvaluate的样式
    function changeStop_nextStepToEvaluate(type) {
        if(type == "nextStep"){
            $("#stop_nextStepToEvaluate").css("background-color", "#337ab7");
            $("#stop_nextStepToEvaluate").css("border-color", "#337ab7");
            $("#stop_nextStepToEvaluate").html("Next Step");
        } else if(type == "stop"){
            $("#stop_nextStepToEvaluate").css("background", "#d62323");
            $("#stop_nextStepToEvaluate").css("border-color", "#d62323");
            $("#stop_nextStepToEvaluate").html("stop");
        }
    }
    //点击retrieve按钮事件
    $("#Retrieve").click(function (e) {
        changeStop_nextStepToEvaluate("stop");
        $("#stop_nextStepToEvaluate").prop("disabled", false);
        $("#start").html("Retrieving...");
        $result.show();

        var service = new Service("/semiSystemProvideRetrieve");
        var WeightModel = $("#WeightModel").val();
        //这里是入参数  所有的参数在在这里构造

        var dataType = $("#dataSelect").val();

//        var selects = $("#buildData").selectpicker('val');
//        selects = selects.join(",");
        var para = {WeightModel: WeightModel, dataType: dataType};
        service.get(para, function (response) {
            $("#waiting").addClass("hidden");
            //$evaluate.removeAttr("disabled");
            //$("#result-data").html(response);
            process(response);
            $evaluatedocument.prop("disabled", false);
        });
        function process(response) {
            var array = [];
            var data = JSON.parse(response);
            for (var i in data) {
                var item = data[i];
                var item_html = "<div class='result-div'>" +
                    "<a href='/getFile?filepath=" + item.url + "' class='result-tile'>" + item.title + "</a>" +
                    "<span class='result-description'>" + item.description + "</span>" +
                    "</div>"
                array.push(item_html);
            }
            $("#start").html("Retrieve Finished");
            $("#dismiss-modalQuerySet").click();
            changeStop_nextStepToEvaluate("nextStep");
            $("#stop_nextStepToEvaluate").prop("disabled", false);
            $("#result-data").html(array.join(""));
            $("#result-data-title").show();

        }
    });
    //stop_nextStepToEvaluateD点击事件
    $("#stop_nextStepToEvaluate").click(function () {
        var text = $(this).text();
        if(text == "stop"){
            Reset();
            $.ajax({
                type: "GET",
                async: true,
                url: "/EndProgram",
                success:function(data){
                    if(data == "ok"){
                    }
                }
            });
        }
        else if(text == "Next Step"){
            $("#dismiss-modalQuerySet").click();
            $("#myModal_evaluate").modal({show: true})
        }
    })
    //evaluate设置
    var $evaluate = $("#Evaluate");
    //一开始evaluate是不可以点击的
    $evaluate.prop("disabled", true);
    $("#evaluationdocumentpathget").click(function(){
        $("#evaluationdocumentpath").click();
    });
    $('#evaluationdocumentpath').fileupload({
        url: "/receive",
        dataType: 'text',
        add: function(e, data){
            data.formData = {tt: 5};
            $("#evaluationdocumentpathshow").val(data['files'][0]['name']);
            data.submit();
            $("#evaluationdocumentpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
        },
        done:function(e,data){
            $("#evaluationdocumentpathget").html('...');
            $evaluate.prop("disabled", false);
        }
    });


    var $result = $("#result");
    var evaluateResult = $("#evaluate-result");
    $("#result-data-title").hide();

    $result.hide();
    evaluateResult.hide();

    $("#Evaluate").click(function () {
        evaluateResult.show();
        var service = new Service("/evaluate");
        service.get({data: ""}, function (resp) {
            $("#evaluate-result-waiting").hide();
            $("#evaluate-result-data").html(resp);
            $("#dismiss-modalEvaluate").click();
            $("#start").html("All Finished");
        });
    });
</script>
</html>

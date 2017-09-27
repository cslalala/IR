<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ICA Mode Three Name</title>
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
    <%--上传文件--%>
    <script src="./Scripts/jquery.iframe-transport.js" type="text/javascript"></script>
    <script src="./Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="./Scripts/jquery.fileupload.js" type="text/javascript"></script>
    <!-- 多选框的js,css -->
    <script src="./Scripts/service.js"></script>
    <script src="./Scripts/bootstrap-select.min.js"></script>
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
        .modal-content-change{
            padding-top:0px;
            padding-left:5px;
            padding-right:5px;
        }
        .close-pos{
            margin-top:0px;
            margin-right:0px;
        }
        .col-xs-2-change{
            padding-left:0px;
        }
        /*模态框头部*/
        .modal-header {
            display: flex; /*采用flexbox布局*/
            flex-direction: row; /*水平布局*/
            align-items: center; /*内容垂直居中*/
            justify-content: space-between;
        }
        th.color{
            background-color: #fcf8e3;
        }
        li.suo{
            margin-left: 10px;
        }
    </style>
</head>

<body onload="AdjustLayout();" style="background-color: #eceeef">
<div class="modal fade" id="Hint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_hint">
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
                <button type="button" class="btn btn-primary" data-dismiss="modal" style="margin-left: 15px;" data-toggle="modal" data-target="#myModal_dataSet">Yes, I have
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal_dataSet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_dataset" data-backdrop="static" style="display: none;">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modalDataSet">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>--%>
                <h4 class="modal-title" id="myModalLabel_dataSet">Data Set</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <div class="form-group" style="padding-left:20px;">
                        <label for="datadoucumentpath" style="margin-left: 15px;">Index Document Path</label>
                        <div class="col-xs-8" style="margin-left: 0px; padding-right:0px;">
                            <input class="form-control" id="datadoucumentpathShow" placeholder="data document path">
                            <input class="form-control hidden" type="file"
                                   name="uploadFile" id="datadoucumentpath">
                        </div>
                        <div class="col-xs-2 col-xs-2-change">
                            <button class="btn btn-default" id="datadoucumentpathget" type="button"
                                    style="margin-left: 0px;">...
                            </button>
                        </div>
                    </div>
                    <%--<div class="form-group" style="margin-top:55px; padding-left: 20px;">--%>
                    <%--<label for="datadoctagpath" style="margin-left: 15px;">Index Tag Path</label>--%>
                    <%--<div class="col-xs-8" style="margin-left:0px; padding-right: 0px;">--%>
                    <%--<input class="form-control" id="datadoctagpathShow" placeholder="data tag path">--%>
                    <%--<input class="form-control hidden" type="file"--%>
                    <%--id="datadoctagpath" name="datadoctagpath">--%>
                    <%--</div>--%>
                    <%--<div class="col-xs-2 col-xs-2-change">--%>
                    <%--<button class="btn btn-default" id="datadoctagpathget" type="button" style="margin-left:0px;">...</button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</form>--%>
            </div>
            <div class="modal-footer" style="margin-top:15px; margin-bottom:10px;">
                <button type="button" class="btn btn-primary" style="margin-left: -10px; background-color:white; color:black; border-color:#ccc;" id="Index">Index
                </button>
                <button type="button" class="btn btn-primary"  style="margin-left: 15px; background-color:#d62323;border-color:#d62323"  id="stop_nextStep">Stop
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modalQuerySet">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>--%>
                <h4 class="modal-title" id="myModalLabel">Query Set</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <div class="form-group" style="padding-left:20px;">
                        <label for="querydocumenpath" style="margin-left: 15px;">Query Document Path</label>
                        <div class="col-xs-8" style="margin-left: 0px; padding-right:0px;">
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
                <button type="button" class="btn btn-primary"  style="margin-left: 15px; background-color:#d62323;border-color:#d62323"  id="stop_Finish">Stop
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
        <li>
            <label  id="userID" style = "color: #f1f1f1">UserID</label>
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
                <h2>Mode Three Name</h2>
                <p style="font-size: large">In this mode, you will need to provide dataSet which you want to indexed and choosing retrieval model,
                    the second setting query,click "Retrieve" button,you will get the result below.
                    Only after you get the result, and fill the "Evaluation File Path" with valid
                    content, click "Evaluate" button,you will get the evaluation answer.</p>
            </div>

            <div class="container" style="margin-left:0px;">
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
                    <p id="result-data" style="font-size: 15px;margin-top: 0;border-right: 1px solid #CEEBBE; border-left: 1px solid #CEEBBE"></p>
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

    ///导航栏
    var state = $("#log_state").html();
    $("#log_state").click(function(){
        if(state == 'Log In')
            $("#myModal_login").modal({show:true});
    })
    $("#modeOne").click(function () {
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeO.jsp";
    })
    $("#modeTwo").click(function(){
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeTw.jsp";
    })
    $("#modeThree").click(function () {
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeTh.jsp";
    })
    //下拉框
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    })
    //////////index的设置
    var $start = $("#start");
    var $index = $("#Index"), fileUploadCounter = 0;
    var $evaluatedocument = $("#evaluatedocumentpathget");
    var $evaluate = $("#evaluate");
    var $stop_nextStep = $("#stop_nextStep");
    var $retrieve = $("#Retrieve")
    var $stop_nextStepToEvaluate = $("#stop_nextStepToEvaluate");
    //结果表示
    var $result = $("#result");
    var evaluateResult = $("#evaluate-result");
    $("#result-data-title").hide();
    $result.hide();
    evaluateResult.hide();
    $("#result-table").hide();


    $index.prop("disabled",true);
    $stop_nextStep.prop("disabled",true);
    $retrieve.prop("disabled", true);
    $stop_nextStepToEvaluate.prop("disabled", true);
    $evaluate.prop("disabled", true);
    $evaluatedocument.prop("disabled", true);
    //start跳转界面,如果是start,就跳转到Hint模态框,如果是indexing...就跳转到dataset的模态框,如果是retrieving...就跳转到queryset的模态框
    $("#start").click(function(){
        var text = $(this).text();
        if(text == "start"){
            $("#Hint").modal({show:true});
        }
        else if(text == "Indexing..." || text =="Index Finished" ){
            $("#myModal_dataSet").modal({show:true});
        }
        else if(text == "Retrieving..." || text == "Retrieve Finished"){
            $("#myModal").modal({show:true});
        }
        else if(text == "All Finished"){
            $("#myModal_evaluate").modal({show:true});
        }
    })
    $("#stop_nextStep").click(function(e){
        var text = $(this).text();
        if(text == "stop"){
            Reset();
            $.ajax({
                type: "GET",
                async: true,
                url: "/EndProgram",
                success:function(data){
                    if(data == "ok"){
                        Reset();
                    }
                }
            });
        }
        else if(text == "Next Step"){
            $("#dismiss-modalDataSet").click();
            $("#myModal").modal({show: true})
        }
    });
    function Reset(){
        $("#datadoucumentpathShow").val("");
        $("#datadoctagpathShow").val("");
        $("#Index").html("Index");
        $index.prop("disabled", true);
        $stop_nextStep.prop("disabled", true);
        $start.html("Index Set");
    }
    //改变stop_nextStep按钮的样式
    function changeStop_nextStep(type){
        if(type == "nextStep"){
            $("#stop_nextStep").css("background-color", "#337ab7");
            $("#stop_nextStep").css("border-color", "#337ab7");
        }
        else if(type == "stop"){
            $("#stop_nextStep").css("background", "#d62323");
            $("#stop_nextStep").css("border-color", "#d62323");
        }
    }
    //上传压缩文档1
    $('#datadoucumentpath').fileupload({
        url:"/Upload",
        dataType: 'text',
        add:function(e, data){
            data.formData = {tt: 1}//tt的作用是在传数据到后台经过判断之后设置路径
            $("#datadoucumentpathShow").val(data['files'][0]['name'])
            data.submit();
            $("#datadoucumentpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
        },
        done: function(e, data){
            checkIndex();
            $("#datadoucumentpathget").html('...');
        }
    });
    //上传索引标签的文件2
    $('#datadoctagpath').fileupload({
        url:"/receive",
        dataType: 'text',
        add:function(e, data){
            data.formData = {tt: 2}
            $("#datadoctagpathShow").val(data['files'][0]['name'])
            data.submit();
            $("#datadoctagpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
        },
        done: function(e, data){
            checkIndex();
            $("#datadoctagpathget").html('...');
        }
    });
    $("#datadoucumentpathget").click(function () {
        //模拟点击
        $('#datadoucumentpath').click();
    });
    $("#datadoctagpathget").click(function () {
        $('#datadoctagpath').click();
    });
    function checkIndex() {
        fileUploadCounter  = 0;
        if($("#datadoctagpathShow").val() != "") {
            fileUploadCounter++;
        }
        if($("#datadoucumentpathShow").val() != "") {
            fileUploadCounter++;
        }
        if(fileUploadCounter == 2){
            $index.prop("disabled", false);
            $("#stop_nextStep").html('stop');
            changeStop_nextStep("stop");
            $stop_nextStep.prop("disabled", true);
        }
    }
    //
    $("#Index").click(function (e){
//        var service = new Service("/userProvideIndex");
//        alert("ddd");
//        var $this = $(e.target);
//        service.get(function(resp){
//            $this.html('Finished')
//            $query_set.prop("disabled", false);
//        });

        //var WeightModel = $("#WeightModel").val();
        //对于已经检索过的结果,再次重新建索引时,之前的结果应该消失
        $("#result-data-title").hide();
        $result.hide();
        evaluateResult.hide();
        $("#result-table").hide();
//        //并且对于检索的界面来说,重新建完所以之后一定要重新检索一遍,所以这种情况应该是Retreive按钮可以使用,然后stop_nextStepToEvaluate按钮应该是变成stop状态并且是不可使用的
//        changeStop_nextStepToEvaluate("stop");
//        $("#stop_nextStepToEvaluate").prop("disabled", true);
        /////////////////////////
        //只要点击index,stop按钮就应该变成红色
        $("#stop_nextStep").prop("disabled", false);
        changeStop_nextStep("stop");
        $("#Index").html('<i class="fa fa-spinner fa-pulse"></i>');
        $("#Index").prop("disabled", true);
        $("#start").html('Indexing...');
        $.ajax({
            type: "GET",
            async: true,
            url: "/userProvideIndex",
            success: function(data) {
                if (data == 'ok') {
                    $("#Index").html('Index');
                    $("#Index").prop("disabled", true);
                    $("#start").html('Index Finished');
                    $("#stop_nextStep").html('Next Step');
                    changeStop_nextStep("nextStep");
                }
            }
        });
    });
    ////retrieve的设置
    $("#stop_nextStepToEvaluate").click(function(e){
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
    });
    function Reset(){
        $("#querydocumenpathShow").val("");
        $("#querytagpathShow").val("");
        $("#Retrieve").html("Retrieve");
        $retrieve.prop("disabled", true);
        $stop_nextStepToEvaluate.prop("disabled", true);
        $start.html("Index Finished");
    }
    //改变stop_nextStepToEvaluate按钮的样式
    function changeStop_nextStepToEvaluate(type){
        if(type == "nextStep"){
            $("#stop_nextStepToEvaluate").css("background-color", "#337ab7");
            $("#stop_nextStepToEvaluate").css("border-color", "#337ab7");
            $("#stop_nextStepToEvaluate").html('Next Step');
        }
        else if(type == "stop"){
            $("#stop_nextStepToEvaluate").css("background", "#d62323");
            $("#stop_nextStepToEvaluate").css("border-color", "#d62323");
            $("#stop_nextStepToEvaluate").html('stop');
        }
    }

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
    //    $('#queryresultpath').fileupload({
    //        url: "/receive",
    //        dataType: 'text',
    //        add: function (e, data) {
    //            data.formData = {tt: 3};
    //            $("#queryresultpathShow").val(data['files'][0]['name']);
    //            data.submit();
    //            $("#queryresultpathget").html('<i class="fa fa-spinner fa-pulse"></i>');
    //        },
    //        done: function (e, data) {
    //            fileUploadCounter++;
    //            checkRetrieval();
    //            $("#queryresultpathget").html('...');
    //        }
    //    });

    //模擬用戶點擊按鈕
    $("#querydocumentpathget").click(function () {
        //模拟点击
        $('#querydocumenpath').click();
    });
    $("#querytagpathget").click(function () {
        $('#querytagpath').click();
    });
    //    $('#queryresultpathget').click(function () {
    //        $('#queryresultpath').click();
    //    });

    function checkRetrieval() {
        var fileUploadCounter_retrieve = 0;
        if($("#querydocumenpathShow").val() != ""){
            fileUploadCounter_retrieve++;
        }
        if($("#querytagpathShow").val() != ""){
            fileUploadCounter_retrieve++;
        }
        if (fileUploadCounter_retrieve == 2) {
            $retrieve.prop("disabled", false);
            changeStop_nextStepToEvaluate("stop");
            $stop_nextStepToEvaluate.prop("disabled", true);
        }
    }
    $("#Retrieve").click(function (e) {
        //再次点击检索的时候,之前检索的结果应该消失掉
        $("#result-data-title").hide();
        $result.hide();
        evaluateResult.hide();
        $("#result-table").hide();
        //点击完retrieve按钮后运行过程中就不能点击,成功之后可以再次点击
        $retrieve.prop("disabled", true);
        //点击检索之后也不能翻到前一页,检索完成之后才可以
        //点完检索之后必须再评测一次

        $("#stop_Finish").prop("disabled", true);
        ////////////////////////////
        changeStop_nextStepToEvaluate("stop");
        $("#stop_nextStepToEvaluate").prop("disabled", false);
        $("#Retrieve").html('<i class="fa fa-spinner fa-pulse"></i>');
        $("#start").html('Retrieving...');
        $result.show();
        var service = new Service("/userProvideRetrieval");
        var WeightModel = $("#WeightModel").val();
        //这里是入参数  所有的参数在在这里构造
        var selects = $("#WeightModel").val();
//        selects = selects.join(",");
        var para = {WeightModel: WeightModel};
        service.get(para, function (response) {
            $("#waiting").addClass("hidden");
            //$evaluate.removeAttr("disabled");
            //$("#result-data").html(response);
            process(response);
            $retrieve.prop("disabled", false);
            $("#dismiss-modalQuerySet").click();
            $("#Retrieve").html('Retrieve');
            $("#start").html('Retrieve Finished');
            $("#stop_nextStepToEvaluate").html('Next Step');
            changeStop_nextStepToEvaluate("nextStep");
            // $evaluatedocument.prop("disabled", false);
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
            $("#result-data").html(array.join(""));
            $("#result-data-title").show();

        }
    });




    //第一个按钮的事件  发送数据到后台     然后后台如果成功则 则可以点击第二个按钮
    //     $("#buildData").click(function (e) {
    //         var $this = $(e.target);
    //         $this.html('<i class="fa fa-spinner fa-pulse"></i>');
    //         var service = new Service("/build");
    //         var dataType = $("#dataType").val();
    //         service.get({dataType: dataType}, function (resp) {
    //             $this.html('Finished');
    //         });
    //     });
    ////////evaluate
    $("#stop_Finish").click(function(e){
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
        else if(text == "Finished"){
            $("#dismiss-modalEvaluate").click();
        }
    });
    function changeStop_Finish(type){
        if(type == "Finished"){
            $("#stop_Finish").css("background-color", "#337ab7");
            $("#stop_Finish").css("border-color", "#337ab7");
            $("#stop_Finish").html("Finished");
            $("#stop_Finish").prop("disabled", false);
        }
        else if(type == "stop"){
            $("#stop_Finish").css("background", "#d62323");
            $("#stop_Finish").css("border-color", "#d62323");
            $("#stop_Finish").html('stop');
            $("#stop_Finish").prop("disabled", false);
        }
    }
    $evaluate = $("#Evaluate");
    $("#evaluationdocumentpathget").click(function(){
        $("#evaluationdocumentpath").click();
        $evaluate.prop("disabled", true);
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
    $("#Evaluate").click(function () {
        changeStop_Finish("stop");
        evaluateResult.show();
        var service = new Service("/evaluate");
        service.get({data: ""}, function (resp) {
            $("#evaluate-result-waiting").hide();
            $("#evaluate-result-data").html(resp);
            $("#dismiss-modalEvaluate").click();
            changeStop_Finish("Finished");
            $start.html('All Finished');
        });
    });
</script>
</html>

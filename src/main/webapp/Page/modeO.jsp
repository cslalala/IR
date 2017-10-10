<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ICA Mode One Name</title>
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
        th.color{
            background-color: #fcf8e3;
        }
        li.suo{
            margin-left: 10px;
        }
    </style>
</head>

<body onload="AdjustLayout();">
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
                <h2>Mode One Name</h2>
                <p style="font-size: large">In this mode, we will provide dataSet and Query, what you need to do is the
                    first choosing the dataSet which you want to indexed, the second choosing query which you want to
                    retrieved, the third choosing retrieval model, click "Retrieve" button, you will get the result
                    below. Only after you get the result, and then click "Evaluate" button, you will get the evaluation answer.</p>

            </div>

            <div class="container">
                <div class="jumbotron"
                     style="padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px;">
                    <div class="row">
                        <div id="hero__password-generator-block" class="col-lg-5 pt-2">
                            <div id="lesspass" class="card v1" style="max-width: 470px;">
                                <div id="menu">
                                    <div class="card-header card-warning" style="display: none;">
                                        <div class="row">
                                            <div class="col-xs-6">Mode One Name<!----></div>
                                        </div>
                                    </div>
                                    <div class="card-header card-warning">
                                        <div class="row">
                                            <div class="index-header">
                                                <div class="col-xs-6">
                                                    Mode One Name
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <form id="password-generator" class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <div class="col-xs-8">
                                                <select name="dataType" id="dataType" placeholder="ggGG"
                                                        class="form-control" style="height:35px;">
                                                    <option value="disk1-2">disk1-2</option>
                                                    <option value="222">222222222</option>
                                                    <option value="3">33333</option>
                                                    <option value="4">4444444</option>
                                                </select><!---->
                                            </div>
                                            <span class="glyphicons glyphicons-ok"></span>
                                            <div class="col-xs-4">
                                                <select id="buildData" name="queryNo"
                                                        class="selectpicker show-tick form-control"
                                                        multiple data-actions-box="true"
                                                        style="height:35px;">
                                                </select>
                                            </div>
                                        </div>
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="col-xs-8">
                                                    <select name="WeightModel" id="WeightModel" placeholder="ggGG"
                                                            class="form-control"
                                                            style="height:35px;">
                                                        <option value="TF_IDF"> TF-IDF</option>
                                                        <option value="1"> 2</option>
                                                        <option value="1"> 1</option>
                                                        <option value="1"> 1</option>
                                                    </select>
                                                </div>
                                                <div class="col-xs-4">
                                                    <button type="button" id="getData"
                                                            class="btn btn-warning btn-block "
                                                            style="height:35px;">
                                                        <span>Retrieve</span><!---->
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-8">
                                                    <button type="button" id="evaluate"
                                                            class="btn btn-warning btn-block" disabled>
                                                        <span>Evaluate</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                        <!----> <!----> <!----> <!---->
                                        <div class="form-group form-tip" style="height:45px;">
                                            <div role="alert" class="alert alert-warning mb-0" style="margin-top: 20px; padding:8px;">
                                                <small>
                                                    <i aria-hidden="true" class="fa fa-exclamation-triangle"></i>
                                                    Be sure to follow the steps on the right!
                                                </small>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="hero-text" class="col-lg-6 offset-lg-1">
                            <h2 class="display-5" style="margin-top: -15px;">Using Steps</h2>
                            <p class="lead" style="font-size: 18px; line-height: 1.5; margin-top: 20px;">
                                Step One: Choose the dataSet you want to indexed.<br/>
                                Step Two: Choose the query you want to retrieved.<br/>
                                Step Three: Choose retrieval model, click "Retrieve" button, you will get the result
                                below<br/>
                                Step Four: Click "Evaluate". You will get the result of all evaluation criteria.
                            </p>
                        </div>
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
                system, you can click "<strong>DOWNLOAD</strong>", more introduction will be presented.</i>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    //下拉框
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    })
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

    function initBuildData() {
        var buildDatas = [];
        for (var i = 51; i < 100; i++) {
            var data = "<option>" + i + "</option>";
            buildDatas.push(data);
        }

        var $buildData = $('#buildData');

        $buildData.html(buildDatas);
        $buildData.selectpicker({
            style: 'btn-warning',
            title: "Select",
            selectAllText: "ALL",
            deselectAllText: "NONE",
            size:8
        });
        var isSelectAll = false;
        $buildData.on('change.bs.select', function (e) {
            var select = $buildData.selectpicker('val');
            if ($.inArray("全选", select) > -1) {
                $buildData.selectpicker("selectAll");
                isSelectAll = true;
                return;
            }
            if (isSelectAll) {
                $buildData.selectpicker("deselectAll");
                isSelectAll = false;
            }
        });
        $buildData.selectpicker('val', '全部');
    }

    initBuildData();


    var $result = $("#result");
    var evaluateResult = $("#evaluate-result");
    $("#result-data-title").hide();
    $("#evaluate-result-title").hide();

    $result.hide();
    evaluateResult.hide();

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


    $evaluate = $("#evaluate");
    var $ee = $("#evaluate");
    $ee.prop("disabled", true);
    $("#getData").click(function (e) {
        $result.show();
        var service = new Service("/classify");
        var WeightModel = $("#WeightModel").val();
        //这里是入参数  所有的参数在在这里构造

        var dataType = $("#dataType").val();

        var selects = $("#buildData").selectpicker('val');
        selects = selects.join(",");
        var para = {WeightModel: WeightModel, queryNo: selects, dataType: dataType};
        service.get(para, function (response) {
            $("#waiting").addClass("hidden");

            //$("#result-data").html(response);
            debugger
            process(response);
            $ee.prop("disabled", false);
        });


        function process(response) {
            var array = [];
            var data = JSON.parse(response);
            for (let i in data) {
                var item = data[i];
                let item_html = "<div class='result-div'>" +
                    "<a href='/getFile?filepath=" + item.url + "' class='result-tile'>" + item.title + "</a>" +
                    "<span class='result-description'>" + item.description + "</span>" +
                    "</div>"
                array.push(item_html);
            }
            $("#result-data").html(array.join(""));
            $("#result-data-title").show();

        }
    });
    $evaluate.click(function () {
        evaluateResult.show();
        var service = new Service("/evaluate");
        service.get({data: ""}, function (response) {
            $("#evaluate-result-waiting").hide();

            $("#evaluate-result-data").html(response);
            $("#evaluate-result-title").show();
        });
    });

</script>
</html>

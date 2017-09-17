<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ICA Manuel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="./Content/lesspass.min.css">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

    <%--<link href="./Content/style2.css" rel="stylesheet"/>--%>
    <%--<link href="./Content/default.css" rel="stylesheet"/>--%>
    <link href="./Content/navtop.css" rel="stylesheet"/>
    <link href="./Content/footer.css" rel="stylesheet"/>
    <link href="./Content/home.css" rel="stylesheet"/>
    <link href="./Content/style.css" rel="stylesheet"/>
    <%--<link href="./Content/loginDialog.css" rel="stylesheet"/>--%>
    <link href="./Content/banner.css" rel="stylesheet"/>

    <%--<link href="./Content/modeStyle.css" rel="stylesheet"/>--%>


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
        .manueldisplay{
            min-width: 1280px;
            background-color: #ffffff;
        }
        h2.blue{
            font-size: 34px;
            font-weight: 300;
            max-width: 650px;
            text-align: center;
            color:#7f794b;
        }
        .description, .step{
            color: #515e66;
            font-size: 18px;
            margin-top: 40px;
        }
        .step{
            text-align: center;
        }
        p{
            font-size: 20px;
        }
        hr{
            margin-top: 80px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #eeeeee;

        }
        p.large{
            font-size: 22px;
        }
    </style>
</head>

<body onload="AdjustLayout();">
<div class="nav-top">
    <ul>
        <li>
            <a href="Home.jsp">HOME</a>
        </li>
        <li>
            <a href="Introduction.jsp">INTRODUCTION</a>
        </li>
        <li>
            <a href="Manuel.jsp">MANUAL</a>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-bottom: 0px; padding-top: 0px;" id="menu">
                API
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" style="width: inherit;text-align: left; display: none;" id="api-menu">
                <li><a href="modeO.jsp">MODE ONE NAME</a></li>
                <li><a href="modeTw.jsp">MODE TWO NAME</a></li>
                <li><a href="modeTh.jsp">MODE THREE NAME</a></li>
            </ul>
        </li>
        <li>
            <a href="https://concept.research.microsoft.com/Home/Download">DOWNLOAD</a>
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
<div class="manueldisplay">
    <div class="homecontent2" style="padding-left: 0px;">
        <div class="tilecontainer" style="width:1200px; padding-left:25px;">
            <%--<div class="tile toptile">--%>
                <%--<div id="topimg"></div>--%>
                <%--<p style="font-size: large">In this manuel, we will tell you how to use this system in detail.--%>
                <%--</p>--%>
            <%--</div>--%>
            <div class="container">
                <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Mode One Name</strong></h2></div>
                <%--第一行展示的是选择数据集,选择queryID, 选择IR model的过程--%>
                <div class = "row" style="margin-top: 30px;">
                    <p> In this mode, we will provide dataSet and Query, what you need to do is the
                        first choosing the dataSet which you want to indexed, the second choosing query which you want to
                        retrieved, the third choosing retrieval model, click "Retrieve" button, you will get the result
                        below. Only after you get the result, and then click "Evaluate" button, you will get the evaluation answer.
                        If you still do not understand how to operate, the following will teach you how to operate step by step.
                    </p>
                </div>
                <div class="row">
                    <div class="col-sm-3 step">
                        <img src="./Images/modeO-step-1.png" height="200" alt="modeO-step-1" title="modeO-step-1">
                        <div class="description" style="width:300px; text-align:left; ">
                           <b>Step one:</b> Click the drop-down box in the highlighted section of the graph to select the dataset to be indexed. More
                             information about dataset will be present in the <strong>DOWNLOAD</strong>.
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3 step arrow">
                                <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: 18px;">
                            </div>
                            <div class="col-sm-6 step">
                                <img src="./Images/modeO-step-2.png" height="200" alt="modeO-step-2" title="modeO-step-2">
                                <div class="description" style="width:340px; text-align:left; ">
                                    <b>Step two:</b> Click the hightlighted drop-down box to select the query to be
                                    retrieved. The box shows the query id and can be multi-select,
                                    click "ALL", all the query ID will be selected, click "NONE", none of the query ID will be selected.
                                </div>
                            </div>
                            <div class="col-sm-3 step arrow">
                                <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: 18px;">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 step">
                        <img src="./Images/modeO-step-3.png" height="200" alt="modeO-step-3" title="modeO-step-3">
                        <div class="description" style="width:300px; text-align:left; ">
                            <b>Step three:</b> Click the drop-down box in the highlighted section of the graph to select IR model. More information about IR model
                            will be present in <strong>INTRODUCTION</strong>.
                        </div>
                    </div>
                </div>
                <%--第二行展示的点击retrieve按钮以及系统呈现结果的形式--%>
                <div class="row">
                    <div class="col-sm-3 step">
                        <img src="./Images/modeO-step-4.png" height="200" alt="modeO-step-4" title="modeO-step-4">
                        <div class="description" style="width:1150px; text-align:left; ">
                            <b>Step four:</b> Click the "Retrieve" button, then the result will be presented in the form of right.
                            The result of the retrieve is sorted by the similarity from high to low. The results include the name and the summary of the document,
                            click on the document name you can see the complete document.
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3 step arrow">
                                <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: 18px;">
                            </div>
                            <div class="col-sm-6 step">
                                <img src="./Images/modeO-step-6.png" height="200" alt="modeO-step-6" title="modeO-step-6">
                            </div>
                        </div>
                    </div>
                </div>
                <%--第三行展示的是点击evaluate以及评测结果的展示--%>
                <div class="row">
                    <div class="col-sm-3 step">
                        <img src="./Images/modeO-step-5.png" height="200" alt="modeO-step-5" title="modeO-step-5">
                        <div class="description" style="width:1150px; text-align:left; ">
                            <b>Step four:</b> Click the "Evaluate" button, then the evaluation result will be presented in the form of right. A detailed explanation of each evaluation indicator
                            will be found in <strong>INTRODUCTION</strong>.
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3 step arrow">
                                <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: 18px;">
                            </div>
                            <div class="col-sm-6 step">
                                <img src="./Images/modeO-step-2.png" height="200" alt="Run multiple instances of the template as checklists" title="Run multiple instances of the template as checklists">
                            </div>
                            <div class="col-sm-3 step arrow">
                                <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: 18px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr>
            </div>
            <div class="content-section content-benefits">
                <div class="container">
                    <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Mode Two Name</strong></h2></div>
                    <div class="row" style="margin-top: 30px;">
                        <p>In this mode, we will provide dataSet, what you need to do is the first choosing the dataSet which you want to
                            indexed and choosing retrieval model, the second setting query,click "Retrieve" button, you will get the result
                            below. Only after you get the result, and fill the "Evaluation File Path" with valid content, click "Evaluate"
                            button,you will get the evaluation answer.If you still do not understand how to operate, the following will teach
                            you how to operate step by step.
                        </p>
                    </div>
                    <%--modeTw-step-1--%>
                    <div class="row benefit" style="margin-top: 60px;">
                        <div class="col-sm-6 image" style="padding-left:70px;">
                            <img src="./Images/modeTw-step-1.png" width="350" alt="modeTw-step-1" title="modeTw-step-1">
                        </div>
                        <div class="col-sm-6 description" style="margin-top: 55px;">
                            <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                                <p class="large"><b>Step one:</b> Click the drop-down box in the highlighted section of the graph to select the dataset to be indexed. More
                                information about dataset will be present in the <strong>DOWNLOAD</strong>.</p>
                        </div>
                    </div>
                    <%--modeTw-step-2--%>
                    <div class="row benefit" style="margin-top:60px;">
                        <div class ="col-sm-6 description" style="margin-top:70px;">
                            <p class="large"><b>Step two:</b> Click the drop-down box in the highlighted section of the graph to select IR model. More information about IR model
                            will be present in <strong>INTRODUCTION</strong></p>.
                        </div>
                        <div class="col-sm-6 image" style="padding-left:120px;">
                            <img src="./Images/modeTw-step-2.png" width="350px" alt="modeTw-step-2" title="modeTw-step-2">
                        </div>
                    </div>
                    <%--modeTw-step-3--%>
                    <div class="row benefit" style="margin-top: 60px;">
                        <div class="col-sm-6 image" style="padding-left:70px;">
                            <img src="./Images/modeTw-step-3.png" width="350" alt="modeTw-step-3" title="modeTw-step-3">
                        </div>
                        <div class="col-sm-6 description" style="margin-top: 55px;">
                            <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                            <p class="large"><b>Step three:</b> Click "Query Set" button, the effect of this button is to show the following modal box.
                                In this modal box, you need to select the files and labels you want to retrieve,
                                as well as the files in which the retrieved results are stored</p>
                        </div>
                    </div>
                    <%--modeTw-step-4--%>
                    <div class="row benefit" style="margin-top:60px;">
                        <div class ="col-sm-6 description" style="margin-top:70px;">
                            <p class="large"><b>Step four:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                            which you want to upload. "Query Document path" is choosing the documents which you want to retrieved. "Query Tag Path" is choosing
                            the file which store the tag which you want to retrieved. "Query Result Path" is choosing the file which you want to store the result.</p>
                        </div>
                        <div class="col-sm-6 image" style="padding-left:120px;">
                            <img src="./Images/modeTw-step-4.png" width="350px" alt="modeTw-step-4" title="modeTw-step-4">
                        </div>
                    </div>
                    <%--modeTw-step-5  检索结果的展示--%>
                    <div class="row" style="margin-top: 100px;">
                        <div class="col-sm-6 image" style="padding-left: 70px;">
                            <img src="./Images/modeTw-step-5.png" width="350px" alt="modeTw-step-5" title="modeTw-step-5">
                            <div class="col-sm-6 description" style="width:1150px; margin-top:60px;padding-left:0px;margin-left:-56px; ">
                                <p class="large"> <b>Step five:</b> Click the "Retrieve" button, then the result will be presented in the form of right.
                                The result of the retrieve is sorted by the similarity from high to low. The results include the name and the summary of the document,
                                click on the document name you can see the complete document.</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-3 step arrow">
                                    <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: -280px;">
                                </div>
                                <div class="col-sm-6 image">
                                    <img src="./Images/modeO-step-6.png" width="480px" alt="modeO-step-6" title="modeO-step-6" style="margin-left:-160px; margin-top:30px;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--modeTw-step-6--%>
                    <div class="row benefit" style="margin-top: 60px;">
                        <div class="col-sm-6 description" style="margin-top: 70px;">
                            <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                                <p class="large"><b>Step six:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                                    which you want to evaluate. .</p>
                        </div>
                        <div class="col-sm-6 image" style="padding-left:120px;">
                            <img src="./Images/modeTw-step-6.png" width="350" alt="modeTw-step-6" title="modeTw-step-6">
                        </div>

                    </div>
                    <%--modeTw-step-7--%>
                    <div class="row benefit" style="margin-top:60px;">
                        <div class="col-sm-6 image" style="padding-left:70px;">
                            <img src="./Images/modeTw-step-7.png" width="350px" alt="modeTw-step-7" title="modeTw-step-7">
                        </div>
                        <div class ="col-sm-6 description" style="margin-top:55px;">
                            <p class="large"><b>Step seven:</b> Click the drop-down box in the highlighted section of the graph to select IR model. More information about IR model
                                will be present in <strong>INTRODUCTION</strong></p>.
                        </div>

                    </div>
                    <%--<div class="row benefit"--%>
                </div>
            </div>
                <div class="container">
                    <hr>
                </div>
                <%--ModeTh--%>
                <div class="content-section content-benefits">
                    <div class="container">
                        <div class="row" style="margin-top: 30px;"><h2 class="blue"><strong>Mode Three Name</strong></h2></div>
                        <div class="row" style="margin-top: 30px;">
                            <p>In this mode, what you need to do is the first setting the dataSet-choosing the indexed document and indexed tag file and  click "Index" to start indexing,
                                the second setting query,click "Retrieve" button, you will get the result
                                below. Only after you get the result, and fill the "Evaluation File Path" with valid content, click "Evaluate"
                                button,you will get the evaluation answer.If you still do not understand how to operate, the following will teach
                                you how to operate step by step.
                            </p>
                        </div>
                        <%--modeTh-step-1--%>
                        <div class="row benefit" style="margin-top: 60px;">
                            <div class="col-sm-6 image" style="padding-left:70px;">
                                <img src="./Images/modeTh-step-1.png" width="350" alt="modeTh-step-1" title="modeTh-step-1">
                            </div>
                            <div class="col-sm-6 description" style="margin-top: 55px;">
                                <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                                <p class="large"><b>Step one:</b> Click "Data Set" button, the effect of this button is to show the following modal box.
                                    In this modal box, you need to select the files and labels you want to index.</p>
                            </div>
                        </div>
                        <%--modeTh-step-2--%>
                        <div class="row benefit" style="margin-top:60px;">
                            <div class ="col-sm-6 description" style="margin-top:70px;">
                                <p class="large"><b>Step two:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                                    which you want to upload. "Index Document path" is choosing the documents which you want to indexed. "Index Tag Path" is choosing
                                    the file which store the tag which you want to indexed.</p>

                            </div>
                            <div class="col-sm-6 image" style="padding-left:120px;">
                                <img src="./Images/modeTh-step-2.png" width="350px" alt="modeTh-step-2" title="modeTh-step-2">
                            </div>
                        </div>
                        <%--modeTh-step-3 modeTh-step-4--%>
                        <div class="row" style="margin-top: 100px;">
                            <div class="col-sm-6 image" style="padding-left: 70px;">
                                <img src="./Images/modeTh-step-3.png" width="350px" alt="modeTh-step-3" title="modeTh-step-3">
                                <div class="col-sm-6 description" style="width:1150px; margin-top:60px;padding-left:0px;margin-left:-56px; ">
                                    <p class="large"> <b>Step three:</b> Click the "Index" button and then the indexing-process is starting. The indexing-process is finished until the
                                        the right image shows.</p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-3 step arrow">
                                        <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: -280px;">
                                    </div>
                                    <div class="col-sm-6 image">
                                        <img src="./Images/modeTh-step-4.png" width="480px" alt="modeTh-step-4" title="modeTh-step-4" style="margin-left:-160px; margin-top:60px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--modeTh-step-5--%>
                        <div class="row benefit" style="margin-top:60px;">
                            <div class ="col-sm-6 description" style="margin-top:70px;">
                                <p class="large"><b>Step four:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                                    which you want to upload. "Query Document path" is choosing the documents which you want to retrieved. "Query Tag Path" is choosing
                                    the file which store the tag which you want to retrieved. "Query Result Path" is choosing the file which you want to store the result.</p>
                            </div>
                            <div class="col-sm-6 image" style="padding-left:120px;">
                                <img src="./Images/modeTh-step-5.png" width="350px" alt="modeTh-step-5" title="modeTh-step-5">
                            </div>
                        </div>
                        <%--modeTh-step-6  检索结果的展示--%>
                        <div class="row benefit" style="margin-top: 60px;">
                            <div class="col-sm-6 image" style="padding-left:70px;">
                                <img src="./Images/modeTh-step-6.png" width="350" alt="modeTh-step-6" title="modeTh-step-6">
                            </div>
                            <div class="col-sm-6 description" style="margin-top: 55px;">
                                <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                                <p class="large"><b>Step five:</b> Click "Query Set" button, the effect of this button is to show the following modal box.
                                    In this modal box, you need to select the files and labels you want to retrieve,
                                    as well as the files in which the retrieved results are stored</p>
                            </div>
                        </div>
                        <%--modeTh-step-7--%>
                        <div class="row benefit" style="margin-top:60px;">
                            <div class ="col-sm-6 description" style="margin-top:70px;">
                                <p class="large"><b>Step six:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                                    which you want to upload. "Query Document path" is choosing the documents which you want to retrieved. "Query Tag Path" is choosing
                                    the file which store the tag which you want to retrieved. "Query Result Path" is choosing the file which you want to store the result.</p>
                            </div>
                            <div class="col-sm-6 image" style="padding-left:120px;">
                                <img src="./Images/modeTw-step-4.png" width="350px" alt="modeTw-step-4" title="modeTw-step-4">
                            </div>
                        </div>
                        <%--modeTh-step-8  检索结果的展示--%>
                        <div class="row" style="margin-top: 100px;">
                            <div class="col-sm-6 image" style="padding-left: 70px;">
                                <img src="./Images/modeTh-step-8.png" width="350px" alt="modeTh-step-8" title="modeTh-step-8">
                                <div class="col-sm-6 description" style="width:1150px; margin-top:60px;padding-left:0px;margin-left:-56px; ">
                                    <p class="large"> <b>Step five:</b> Click the "Retrieve" button, then the result will be presented in the form of right.
                                        The result of the retrieve is sorted by the similarity from high to low. The results include the name and the summary of the document,
                                        click on the document name you can see the complete document.</p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-3 step arrow">
                                        <img src="./Images/step-arrow.svg" alt="An arrow facing right" scale="0" style="margin-top: 90px; margin-left: -280px;">
                                    </div>
                                    <div class="col-sm-6 image">
                                        <img src="./Images/modeO-step-6.png" width="480px" alt="modeO-step-6" title="modeO-step-6" style="margin-left:-160px; margin-top:30px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--modeTh-step-9--%>
                        <div class="row benefit" style="margin-top: 60px;">
                            <div class="col-sm-6 description" style="margin-top: 70px;">
                                <%--<img src="./Images/icon-lightbulb-blue.svg">--%>
                                <p class="large"><b>Step six:</b> Click <img src="./Images/upload.png", width="30px" alt="upload">, then you can choose the file
                                    which you want to evaluate. .</p>
                            </div>
                            <div class="col-sm-6 image" style="padding-left:120px;">
                                <img src="./Images/modeTh-step-9.png" width="350" alt="modeTh-step-9" title="modeTh-step-9">
                            </div>

                        </div>
                        <%--modeTw-step-10--%>
                        <div class="row benefit" style="margin-top:60px;">
                            <div class="col-sm-6 image" style="padding-left:70px;">
                                <img src="./Images/modeTh-step-10.png" width="350px" alt="modeTh-step-10" title="modeTh-step-10">
                            </div>
                            <div class ="col-sm-6 description" style="margin-top:55px;">
                                <p class="large"><b>Step seven:</b> Click the drop-down box in the highlighted section of the graph to select IR model. More information about IR model
                                    will be present in <strong>INTRODUCTION</strong></p>.
                            </div>

                        </div>
                        <%--<div class="row benefit"--%>
                    </div>
                </div>
        </div>
    </div>
</div>
</body>
<script>
    $("#menu").click(function(){
        if($("#api-menu").css("display") == 'none')
            $("#api-menu").css("display", "block");
        else
            $("#api-menu").css("display", "none");
    });
</script>
</html>

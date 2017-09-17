
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="./Images/title.png">
    <title> ICA Information Retrieval</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./Content/default.css" rel="stylesheet"/>
    <link href="./Content/navtop.css" rel="stylesheet"/>
    <link href="./Content/footer.css" rel="stylesheet"/>
    <link href="./Content/home.css" rel="stylesheet"/>
    <link href="./Content/style.css" rel="stylesheet"/>
    <link href="./Content/loginDialog.css" rel="stylesheet"/>
    <link href="./Content/banner.css" rel="stylesheet"/>
    <link href="./Content/style2.css" rel="stylesheet"/>
    <link href="./Content/bootstrap.css" rel="stylesheet"/>
    <link href="./Content/login_style.css", rel="stylesheet">

    <script src="./Scripts/jquery-1.11.2.min.js"></script>
    <script src="./Scripts/responsive-nav.js"></script>
    <script src="./Scripts/login.js"></script>
    <script src="./Scripts/layout.js"></script>
    <script src="./Scripts/analytics.js"></script>

    <script src="./Scripts/jquery.validate.js"></script>
    <script src="./Scripts/jquery.validate.unobtrusive.js"></script>

    <%--导航栏下拉框--%>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./Scripts/bootstrap-dropdown.js"></script>
    <style type="text/css">
        li.suo{
            margin-left: 10px;
        }
        .modal {
            display: none; /* 默认隐藏 */
            position: fixed; /* 根据浏览器定位 */
            /*z-index: 1; !* 放在顶部 *!*/
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
        a.hover{
            background-color: #adadad;
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
    </style>

</head>
<body onload="AdjustLayout();">
<div class="modal fade" id="myModal_login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_login" data-backdrop="static">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modal_login" style="margin-right:-15px; margin-top:-20px;">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>--%>
                <h4 class="modal-title" id="myModalLabel">Log In</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <p style="padding: 15px 0px 10px; position: relative;">
                        <%--<span class="u_logo"></span>--%>
                        <input class="ipt ipt_username" type="text" placeholder="username or email address " value="" id="input_login_username" style="padding-top:5px; padding-bottom: 5px;">
                    </p>
                    <p style="position: relative; margin-top:8px;">
                        <input class="ipt ipt_password"  type="password" placeholder="password" value="" id="input_login_password"  style="padding-bottom: 5px; padding-top: 5px;">
                    </p>
                    <div style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
                        <p style="margin: 10px 0px 20px 0px;">
                            <span style="float: left;">
                                <a style="color: rgb(204, 204, 204); font-size:14px;" href="#">Forget password?</a>
                            </span>
                            <span style="float: right;">
                                <%--<a style="color: rgb(204, 204, 204); margin-right: 5px; font-size: 14px;"  data-toggle="#myModal_register">Register</a>--%>
                                <button type="button" class="btn btn-primary"  id="go2register" style="margin-left: 0px;background-color:#fefefe; border-color:#fefefe;color:#c54242">Register</button>
                                 <button type="button" class="btn btn-primary" style="margin-left: 0px;" id="button_login">Log In</button>
                                <%--<a style="background: rgb(0, 142, 173); padding: 4px 5px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold; text-decoration: none;" href="#">Log In</a>--%>
                            </span>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal_register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_register" data-backdrop="static">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-modal_register" style="margin-right:-15px; margin-top:-20px;">x</a>
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>--%>
                <h4 class="modal-title" id="myModalLabel">Register</h4>
            </div>
            <div class="modal-body" style="margin-left:30px;">
                <form enctype="multipart/form-data" action="/ 这里是web.xml配置接受servlet的地址" method="post">
                    <p style="padding: 15px 0px 10px; position: relative;">
                        <label for="input_register_email">Email Address</label>
                        <input class="ipt ipt_username" type="text" placeholder="like 823164623@qq.com " id="input_register_email" value="" style="padding-top:5px; padding-bottom: 5px;">
                    </p>
                    <p style="padding: 0px 0px 10px; position: relative;">
                        <label for="input_register_username" >Username</label>
                        <input class="ipt ipt_username" id="input_register_username" type="text" placeholder="like: Lisa"  value="" style="padding-bottom: 5px; padding-top: 5px;">
                    </p>
                    <p style="padding: 0px 0px 10px; position: relative;">
                        <label for="input_register_password_set" >Set Password</label>
                        <input class="ipt ipt_password" id="input_register_password_set" type="password" placeholder="consist of more than 6 digits or letters"  value="" style="padding-bottom: 5px; padding-top: 5px;">
                    </p>
                    <p style="padding: 0px 0px 10px; position: relative;">
                        <label for="input_register_password_confirm" >Confirm Password</label>
                        <input class="ipt ipt_password" id="input_register_password_confirm" type="password" placeholder="enter password again"  value="" style="padding-bottom: 5px; padding-top: 5px;">
                    </p>
                </form>
            </div>
            <div class="modal-footer" style="margin-top:0px; margin-bottom:10px;">
                <%--<button type="button" class="btn btn-primary"  id="back_toLogin" style="margin-left: 0px;background-color:#fefefe; border-color:#fefefe;color:#d6d6d6">Already have a account</button>--%>
                <button type="button" class="btn btn-primary" style="font-size: 16px;" id="button_register">Create Account</button>
                <button type="button" class="btn btn-primary" id="back_login" style="margin-left: 0px;background-color:#fefefe; border-color:#fefefe;color:#c54242">Log In</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="Hint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_hint">
    <div class="modal-dialog" style="z-index: 2000;" role="document">
        <div class="modal-content modal-content-change" style="width: 80%;">
            <a class="close close-pos" data-dismiss="modal" id="dismiss-hint">x</a>
            <div class="modal-header" style="border: none;">
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>--%>
                <p class="modal-title" id="myModalLabel_hint">Please Fill All the Blanks?</p>
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
    <div id="banner-bglayer">
        <div id="concept">
            <div id="banner-title" > &nbsp;&nbsp;&nbsp;Information Retrieval<!-- and Concept Tagging <sup class="rightcorner">Preview</sup></div>-->
                <%--<div id="banner-title2" >For Short Text Understanding</div>--%>
            </div>
        </div>
    </div>
    <div >
        <div class="homedisplay">


            <div class="homecontent1">

                <a href="#Section2">
                    <img class="breath_light" src="./Images/arrow.png" alt="" />
                </a>

                <img class="conceptworld" src="./Images/robot1.png" width="319" height="375" alt="" />

                <h2 class="quotemurphy1">
                    Information retrieval (IR) is the activity of obtaining information resources relevant to an information need from a collection of information resources. Searches can be based on full-text or other content-based indexing.
                </h2>

                <h2 class="homeh1">
                    <a class="homelink" href="/Home/Introduction "> See more details</a>
                </h2>

            </div>
            <a name="Section2"></a>

            <div class="homecontent5">

                <h2 class="quotemurphy2">
                    In this manual, You can clearly understand the specific operation of the three modes.
                </h2>
                <img class="demopic" src="./Images/robot2.png" width="319" height="375" alt="demo" />
                <h2 class="homeh4">
                    <a class="homelink" href="/Home/Demo">See the manual</a>
                </h2>
            </div>
            <section class="section-white">
                <div class = "container">
                    <div class = "margin-bottom-50">
                        <div class="col-md-12 text-center">
                            <h2 class="section-title"> Choose Your Needed Mode</h2>
                            <div class="separator_wrapper">
                                <i class = "icon icon-star-two red"></i>
                            </div>
                            <p class="section-subtitle">
                                The following are three modes provided by the system.
                                <br/>
                                The three modes are described in detail in the
                                <strong>Manual</strong>
                                .
                                <br/>
                            </p>
                        </div>
                    </div>
                    <div class="row" style="width:100%; margin-left:0px; margin-right:0px;">
                        <div class="col-md-4" style="padding-right: 10px; padding-left: 10px;">
                            <div class="modeO">
                                <div class="mode-top">
                                    <h3>Mode One</h3>
                                    <h4>mode name</h4>
                                    <%--<p class="mode">--%>
                                        <%--<span class="currency white">$</span>--%>
                                        <%--<sapn class="number white">29</sapn>--%>
                                        <%--<span class="month white">/month</span>--%>
                                    <%--</p>--%>
                                </div>
                                <div class="mode-bottom">
                                    <ul>
                                        <li>Indexed collections</li>
                                        <li>Pre-defined quries</li>
                                        <li>Pre-defined IR models</li>
                                    </ul>
                                    <p  class="btn btn-md btn-block btn-mode-green" id="modeOneButton">Try It Now</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="modeTw">
                                <div class="mode-top">
                                    <h3>Mode Two</h3>
                                    <h4>mode name</h4>
                                </div>
                                <div class="mode-bottom">
                                    <ul>
                                        <li>Indexed collections</li>
                                        <li>User-defined quries</li>
                                        <li>Pre-defined IR models</li>
                                    </ul>
                                    <p  class="btn btn-md btn-block btn-mode-red" id="modeTwoButton">Try It Now</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="modeTh">
                                <div class="mode-top">
                                    <h3>Mode Three</h3>
                                    <h4>mode name</h4>
                                </div>
                                <div class="mode-bottom">
                                    <ul>
                                        <li>User-defined collections</li>
                                        <li>User-defined quries</li>
                                        <li>Pre-defined IR models</li>
                                    </ul>
                                    <p class="btn btn-md btn-block btn-mode-blue" id="modeThreeButton">Try It Now</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--<div class="homecontent4">--%>
                <%--<h2 class="quotemurphy3">--%>
                    <%--We provide REST APIs for serving your applications. These APIs are standard, cross-platform, and easy-to-use.--%>
                <%--</h2>--%>
                <%--<img class="picleft" src="./Images/api.gif"  alt="api" />--%>
                <%--<h2 class="homeh3">--%>
                    <%--<a class="homelink" href="/Home/Api">Get the API</a>--%>
                <%--</h2>--%>
            <%--</div>--%>
            <div class="homecontent3">
                <h2 class="quotemurphy4">
                    In the release, We provide downloads of all data sets and queries within the system.
                </h2>
                <img class="downloadpic" src="./Images/robot3.png" width="319" height="375" alt="download" />
                <h2 class="homeh4">
                    <a class="homelink" href="/Home/Download">Go to download</a>
                </h2>
            </div>


        </div>

        <div class="footer">
            <%--<a href="http://go.microsoft.com/fwlink/?LinkID=286687" class="footer-element" target="_blank">Privacy and Cookies</a>--%>
            <%--<a href="http://go.microsoft.com/fwlink/?LinkID=386394" class="footer-element" target="_blank">Terms of use</a>--%>
            <%--<a href="http://go.microsoft.com/fwlink/?LinkID=402117" class="footer-element" target="_blank">Code of Conduct</a>--%>
            <%--<a href="http://go.microsoft.com/fwlink/?LinkId=506942" class="footer-element" target="_blank">Trademarks</a>--%>
            <a class="footer-element" target="_blank">Privacy and Cookies</a>
            <a class="footer-element" target="_blank">Terms of use</a>
            <a class="footer-element" target="_blank">Code of Conduct</a>
            <a class="footer-element" target="_blank">Trademarks</a>
            <%--<l class="footer-element">漏2016 Microsoft</l>--%>

        </div>
    </div>
    </div>
</body>
<script>

//    $("#menu").click(function(){
//        if($("#api-menu").css("display") == 'none')
//            $("#api-menu").css("display", "block");
//        else
//            $("#api-menu").css("display", "none");
//    });
//下拉框
$(document).ready(function () {
    $('.dropdown-toggle').dropdown();
})
    //在登录模态框中点击注册按钮
    $("#go2register").click(function () {
        $("#dismiss-modal_login").click();
        $("#myModal_register").modal({show:true});
    })
    //在注册模态框上点击“Log In”返回登录模态框
    $("#back_login").click(function () {
        $("#dismiss-modal_register").click();
        $("#myModal_login").modal({show: true});
    })
    //在登录模态框上点击登录按钮
    $("#button_login").click(function () {
        checkInput_login();
    })
    function checkInput_login() {
        var cont = 0;
        if($("#input_login_username").val() != "") {
            cont++;
        } else {
            document.getElementById("input_login_username").style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if($("#input_login_password").val() != "") {
            cont++;
        } else{
            document.getElementById( "input_login_password" ).style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if(cont == 2){}
    }
    //在注册模态框上点击注册按钮
    $("#button_register").click(function () {
        var cont = 0;
        if($("#input_register_email").val() != "") {
            cont++;
        }else{
            document.getElementById("input_register_email").style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if($("#input_register_username").val() != "") {
            cont++;
        }else{
            document.getElementById("input_register_username").style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if($("#input_register_password_set").val() != "") {
            cont++;
        }else{
            document.getElementById("input_register_password_set").style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if($("#input_register_password_confirm").val() != "") {
            cont++;
        }else{
            document.getElementById("input_register_password_confirm").style.border = "1px solid rgba(202, 105, 105, 0.71)";
        }
        if(cont == 4){

        }
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
    $("#modeOneButton").click(function () {
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeO.jsp";
    })
    $("#modeTwoButton").click(function () {
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeTw.jsp";
    })
    $("#modeThreeButton").click(function () {
//        if(state == 'Log In')
//            $("#myModal_login").modal({show:true});
        window.location.href="modeTh.jsp";
    })
</script>
</html>

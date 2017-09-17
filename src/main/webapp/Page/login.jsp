<%--
  Created by IntelliJ IDEA.
  User: chensu
  Date: 2017/6/26
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
    <link href="./Content/login_style.css", rel="stylesheet">
    <script src="./Scripts/jquery-1.11.2.min.js"></script>
</head>
<body>
<div class="top_div"></div>
<div style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 250px; text-align: center;">
    <div style="height: 30px; line-height: 30px; margin-top: 10px; border-bottom-color: rgb(231, 231, 231); border-bottom-width: 1px; border-bottom-style: solid;">
        <p style="padding-right:300px; font-size:18px; ">Log In</p>
    </div>
    <%--<div style="width: 165px; height: 96px; position: absolute;">--%>
        <%--<div class="tou">--%>
            <%--<img src="./Images/tou.png" width="140px"  height="140px"/>--%>
        <%--</div>--%>
        <%--&lt;%&ndash;<div class="initial_left_hand" id="left_hand" style="left:100px;top:-12px;"></div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div class="initial_right_hand" id="right_hand" style="right:-112px;top:-12px"></div>&ndash;%&gt;--%>
    <%--</div>--%>
    <p style="padding: 30px 0px 10px; position: relative;">
        <%--<span class="u_logo"></span>--%>
        <input class="ipt ipt_username" type="text" placeholder="username or email address " value="">
    </p>
    <p style="position: relative; margin-top:8px;">
        <input class="ipt ipt_password" id="password" type="password" placeholder="password" value="">
    </p>
    <div style="height: 50px; line-height: 50px; margin-top: 20px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
        <p style="margin: 0px 35px 20px 45px;"><span style="float: left;"><a style="color: rgb(204, 204, 204);" href="#">Forget password?</a></span>
            <span style="float: right;"><a style="color: rgb(204, 204, 204); margin-right: 10px;" href="register.jsp">Register</a>
                <button class="btn "></button>
              <a style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" href="#">Log In</a>
           </span>
        </p>
    </div>
</div>
</body>
</html>

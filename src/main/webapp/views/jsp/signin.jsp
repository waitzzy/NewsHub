<%--
  Created by IntelliJ IDEA.
  User: lkh
  Date: 2018/5/29
  Time: 上午10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="../css/cover.css" rel="stylesheet">
    <link href="../css/signin.css" rel="stylesheet" media="screen">
</head>


<body>
<div class="site-wrapper">
    <div class="site-wrapper-inner">
        <div class="cover-container">

            <div class="masthead clearfix">
                <div class="inner">
                    <h3 class="masthead-brand">新闻信息整合推荐网站</h3>
                    <nav>
                        <ul class="nav masthead-nav">
                            <li><a href="title.jsp">Home</a></li>
                            <li class="active"><a href="signin.jsp">Sign in</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div id="form" class="form-signin">
                <h2 class="form-signin-heading">请填写信息</h2>
                <input type="text" id="user" class="form-control" placeholder="用户名" required autofocus>
                <input type="password" id="password" class="form-control" placeholder="密码" required autofocus>
                <div class="span12"><br></div>
                <button class="btn btn-lg btn-primary btn-block" onclick="logIn()">登陆</button>
                <button class="btn btn-lg btn-warning btn-block" onclick="change()">注册</button>
            </div>

            <div class="mastfoot">
                <div class="inner">
                    <p>Designers: 现代软件工程课程设计第8组      <a href="https://github.com/fucknamel/NewsHub">Github</a>
                </div>
            </div>

        </div>
    </div>
</div>
<%-- Bootstrap --%>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<script>
    function logIn() {

        var userName = $('#user')[0].value;
        //alert("username"+userName.length);
        var passWord = $('#password')[0].value;
        //alert("password"+passWord.length);

        if(userName.length == 0||passWord.length == 0){
            alert("请填写完整用户名和密码!");
        }
        else {
            $.ajax({
                type: 'POST',
                url: '../../user/login.do',
                data: {
                  'username':userName,
                  'password':passWord
                },
                async : false,
                success: function (data) {
                    if (data.status != 0) {
                        alert(data.msg);
                    } else {
                        sessionStorage.setItem('userInfo', JSON.stringify(data));
                        if (data.data.usertype == "user") {
                            window.location.href = "home.jsp";
                        } else if (data.data.usertype == "admin") {
                            window.location.href = "manageHome.jsp";
                        } else {
                            var json= JSON.stringify(data);
                            alert(json);
                        }
                    }
                }
            });
        }
    }

    function change() {
        var html = "";
        html += "<form class=\"form-signin\">";
        html += "<h2 class=\"form-signin-heading\">请填写信息</h2>";
        html += "<input id = \"username\" type=\"text\" name=\"user\" class=\"form-control\" placeholder=\"用户名\" required autofocus>";
        html += "<input id = \"password\" type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"密码\" required autofocus>";
        html += "<input id = \"usertype\" type=\"text\" name=\"section\" class=\"form-control\" placeholder=\"用户类型\" required autofocus>";
        html += "<div class=\"span12\"><br></div>";
        html += "<button onclick=\"Register()\" class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">注册</button>";
        html += "</form>";
        document.getElementById("form").innerHTML = html;
    }

    function Register(){

        var userName = $('#username')[0].value;
        //console.log(userName);
        var passWord = $('#password')[0].value;
        //console.log(passWord);
        var userType = $('#usertype')[0].value;

        if(userName.length == 0 ||passWord.length == 0||userType.length == 0){
            alert("请填写完整注册信息!");
        }else{
            if(userType != "admin" && userType != "user"){
                alert("请输入正确的用户类型!");
            }
            else{
                $.ajax({
                    type: 'POST',
                    url: '../../user/register.do',
                    data: {
                        'username':userName,
                        'password':passWord,
                        'usertype':userType
                    },
                    async : false,
                    success: function (data) {
                        if (data.status != 0) {
                            alert(data.msg);
                        } else {
                            alert(data.msg);
                            window.location.href="signin.jsp";
                        }
                    }
                });
            }

        }

    }
</script>
</body>
</html>

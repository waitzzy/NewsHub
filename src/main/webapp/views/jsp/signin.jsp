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
                <button class="btn btn-lg btn-primary btn-block" onclick="check()">登陆</button>
                <button class="btn btn-lg btn-warning btn-block" onclick="change()">注册</button>
            </div>

            <div class="mastfoot">
                <div class="inner">
                    <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="../js/userAjax.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lkh
  Date: 2018/6/3
  Time: 上午10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="css/cover.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet" media="screen">
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
                            <li class="active"><a href="signin">Sign in</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div id="1" class="inner cover">
                <div class="alert alert-danger" role="alert">
                    <p>
                        对不起！
                        您输入的用户名不存在或者密码错误！
                    </p>
                </div>
            </div>
            <a href="signin" class="btn btn-lg btn-default">返回</a>

            <div class="mastfoot">
                <div class="inner">
                    <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="js/temp.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lkh
  Date: 2018-12-02
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <link href="/newshub/views/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="/newshub/views/css/cover.css" rel="stylesheet">
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
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="signin">Sign in</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="inner cover">
                <h1 class="cover-beading">NewsHub</h1>
                <p class="lead">新闻分类网站——demo</p>
                <p class="lead">
                    <a href="signin" class="btn btn-lg btn-default">Sign in</a>
                </p>
            </div>

            <div class="mastfoot">
                <div class="inner">
                    <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="/newshub/views/js/userAjax.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="/newshub/views/js/jquery-3.3.1.min.js"></script>
<script src="/newshub/views/js/bootstrap.min.js"></script>
</body>
</html>

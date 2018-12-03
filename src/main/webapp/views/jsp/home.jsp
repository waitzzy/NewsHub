<%--
  Created by IntelliJ IDEA.
  User: lkh
  Date: 2018-12-02
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/views/admin/homelist.jsp">NewsHub</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">按内容分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/views/admin/###.jsp">教学</a></li>
                        <li><a href="/views/admin/###.jsp">活动</a></li>
                        <li><a href="/views/admin/###.jsp">竞赛</a></li>
                        <li><a href="/views/admin/###.jsp">科研</a></li>
                        <li><a href="/views/admin/###.jsp">学术</a></li>
                        <li><a href="/views/admin/###.jsp">留学</a></li>
                        <li><a href="/views/admin/###.jsp">就业</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false">按来源分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/views/admin/###.jsp">教务处</a></li>
                        <li><a href="/views/admin/###.jsp">学工部</a></li>
                        <li><a href="/views/admin/###.jsp">青春川大</a></li>
                        <li><a href="/views/admin/###.jsp">就业网</a></li>
                        <li><a href="/views/admin/###.jsp">招生网</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">新闻搜索 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/views/admin/###.jsp">按时间</a></li>
                        <li><a href="/views/admin/###.jsp">按内容</a></li>
                        <li><a href="/views/admin/###.jsp">按来源</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">新闻推荐</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="/views/admin/###.jsp">个人中心<span class="sr-only">(current)</span></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <div class="alert alert-success">
            <h2 class="text-center">
                暂无，待开发
            </h2>
        </div>
        <%--<button class="btn btn-block btn-primary" onclick="re()">返回用户管理</button>--%>
    </div>
</div>
<script src="js/temp.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>>

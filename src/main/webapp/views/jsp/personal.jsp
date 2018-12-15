<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <%-- Custom styles for this template --%>
    <link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="../assets/css/admin.css">
    <link rel="stylesheet" href="../assets/css/app.css">

</head>
<body data-type="generalComponents">

<%@ include file="header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">


    <%@ include file="leftNav.jsp" %>


    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li class="am-active">新闻正文</li>
        </ol>
        <div class="tpl-content-scope">
            <div class="note note-info">
                <h3 id="newsTitle">TitleTest
                    <span class="close" data-close="note"></span>
                </h3>
                <p>
                    <span class="label label-success" >新闻ID</span>
                    <span id="newsID">  </span>
                </p>
                <p>
                    <span class="label label-success" >原文URL</span>
                    <span id="newsSource">  </span>
                </p>
                <p>
                    <span class="label label-success" >标签</span>
                    <span id="newsLabel">  </span>
                </p>
                <p>
                    <span class="label label-success" >发布时间</span>
                    <span id="newsTime">  </span>
                </p>
                <p>
                    <span class="label label-success" >爬取时间</span>
                    <span id="newsCrawlTime">1</span>
                </p>
                <p id = 'newsContent'> 内容</p>

            </div>
        </div>
    </div>


</div>

</body>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>


<script src="../js/newsAjax.js?"></script>
<script>

</script>
</html>
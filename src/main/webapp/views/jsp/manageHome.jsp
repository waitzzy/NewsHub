<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" %>
<!doctype html>
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
<%@ include file="manageHeader.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="leftNav.jsp" %>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站(四川大学)管理端
        </div>
        <ol class="am-breadcrumb">
            <li><a href="manageHome.jsp" class="am-icon-home">首页</a></li>

            <li class="am-active">注意事项</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 注意事项
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."></div>
                    </div>
                </div>
            </div>
            <div class="tpl-block">
                <div class="tpl-content-scope">
                    <h2>
                        <span class="close" data-close="note">管理员注意事项</span>
                    </h2>
                    <div class="note note-info">
                        <h3>1.未经批准，不得随意发布新闻、修改新闻。</h3>
                        <h3>2.原则上不得修改用户个人信息。</h3>
                        <h3>3.网站管理员必须保管好自己的账号信息。</h3>
                        <h3>4.严禁泄露用户个人信息。</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>

</html>

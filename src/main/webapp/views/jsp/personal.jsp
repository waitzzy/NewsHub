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

<%@ include file="header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">


    <%@ include file="leftNav.jsp" %>


    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站(四川大学)
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li class="am-active">个人信息</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 个人信息
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                    </div>
                </div>


            </div>


            <div class="tpl-block">

                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <form class="am-form tpl-form-line-form">
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">用户ID<span class="tpl-form-line-small-title">/User ID</span></label>
                                <div class="am-u-sm-9">
                                    <small id="userid" > </small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户名<span class="tpl-form-line-small-title">/User Name</span></label>
                                <div class="am-u-sm-9">
                                    <small id="username"> </small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">登录时间 <span class="tpl-form-line-small-title">/Login Time</span></label>
                                <div class="am-u-sm-9">
                                    <small  id="logintime" > </small>
                                </div>
                            </div>


                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">注册时间 <span class="tpl-form-line-small-title">/Register Time</span></label>
                                <div class="am-u-sm-9">
                                    <small id="createtime" > </small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">更新时间 <span class="tpl-form-line-small-title">/Update Time</span></label>
                                <div class="am-u-sm-9">
                                    <small id="updatetime" > </small>
                                </div>
                            </div>



                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button onclick="window.location.href='home.jsp'" type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success ">确认</button>
                                </div>
                            </div>
                        </form>
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

<script src="../js/newsAjax.js"></script>
<script src="../js/dataTransfer.js"></script>
<script>

    $(document).ready(function () {
        var userInfo = sessionStorage.getItem('userInfo');
        //console.log(userInfo);
        userinfo = JSON.parse(userInfo);
        //取值时：把获取到的Json字符串转换回对象
        var logintime = userinfo.data.logintime;
        var createtime = userinfo.data.createtime;
        var updatetime = userinfo.data.updatetime;
        document.getElementById("userid").innerText=userinfo.data.userid;
        document.getElementById("username").innerText=userinfo.data.username;
        document.getElementById("logintime").innerText=timeFormat(logintime);
        document.getElementById("createtime").innerText=timeFormat(createtime);
        if(updatetime == null){
            document.getElementById("updatetime").innerText="从未更新";
        }else{
        document.getElementById("updatetime").innerText=timeFormat(updatetime);}
    });
</script>
<script>

</script>
</html>
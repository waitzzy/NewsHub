<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 14:35
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
            新闻分类推荐网站(四川大学) 管理员
        </div>
        <ol class="am-breadcrumb">
            <li><a href="manageHome.jsp" class="am-icon-home">首页</a></li>

            <li class="am-active">修改管理员密码</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 修改管理员密码
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

                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <form class="am-form tpl-form-line-form">

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户ID<span
                                        class="tpl-form-line-small-title">/User ID</span></label>
                                <div class="am-u-sm-9">
                                    <small id="userid" ></small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户名<span
                                        class="tpl-form-line-small-title">/User Name</span></label>
                                <div class="am-u-sm-9">
                                    <small id="username" ></small>
                                </div>
                            </div>


                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">请输入新密码<span
                                        class="tpl-form-line-small-title">/Password 1#</span></label>
                                <div class="am-u-sm-9">
                                    <input type="password" class="tpl-form-input" id="psword1" placeholder="请输入新密码">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">再次输入新密码 <span
                                        class="tpl-form-line-small-title">/Password 2#</span></label>
                                <div class="am-u-sm-9">
                                    <input type="password" class="tpl-form-input" id="psword2" placeholder="再次输入新密码">
                                </div>
                            </div>


                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="changePasswd()">确认
                                    </button>
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


<script src="../js/newsAjax.js?"></script>

<script>
    $(document).ready(function () {
        var userInfo = sessionStorage.getItem('userInfo');
        //console.log(userInfo);

        userinfo = JSON.parse(userInfo);//取值时：把获取到的Json字符串转换回对象
        document.getElementById("userid").innerText = userinfo.data.userid;
        document.getElementById("username").innerText = userinfo.data.username;})

</script>
<script>
    function changePasswd() {
        var password1 = $('#psword1')[0].value;
        //lert(password1);
        var password2 = $('#psword2')[0].value;
        //alert(password2);
        if(password1!==password2){alert("两次输入不一致!请重试!");}
        else {
            var userInfo = sessionStorage.getItem('userInfo');
            //console.log(userInfo);
            userinfo = JSON.parse(userInfo);//取值时：把获取到的Json字符串转换回对象
            var userID = parseInt(userinfo.data.userid);
            var userName = userinfo.data.username;

            var URL = "../../manage/change_user.do";
            $.ajax({
                type: 'POST',
                url: URL,
                dataType : 'json',
                data: {
                    'id':userID,
                    'username':userName,
                    'password':password2
                },
                //data: 'username=' + userName + '&password=' + passWord,
                async: false,
                success: function (data) {
                    if (data.status != 0) {
                        alert(data.msg);
                    } else {
                        alert("修改成功，请重新登录!");
                        window.location.href = "signin.jsp";
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status);
                    alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                }
            });
        }
    }
</script>
</html>


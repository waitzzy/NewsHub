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
            Amaze UI 表单
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">首页</a></li>
            <li><a href="#">表单</a></li>
            <li class="am-active">Amaze UI 表单</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 表单
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
                                <label  class="am-u-sm-3 am-form-label">用户ID<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="userid" class="am-u-sm-3 am-form-label"> id</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户类型<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="usertype" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户名<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="username" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>


                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">密码<span
                                        class="tpl-form-line-small-title">Password</span></label>
                                <div class="am-u-sm-9">
                                    <a id="password" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">登录时间<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="logintime" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">注册时间<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="createtime" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>


                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="Delete()">确认
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


<script>
    var loc = location.href;
    alert(loc)
    var n1 = loc.length;//地址的总长度
    var n2 = loc.indexOf("=");//取得=号的位置
    var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
    alert(id);

    var userInfo = sessionStorage.getItem(id);
    userinfo = JSON.parse(userInfo);
    document.getElementById("userid").innerHTML=userinfo.userid;
    document.getElementById("username").innerHTML=userinfo.username;
    document.getElementById("password").innerHTML=userinfo.password;
    document.getElementById("logintime").innerHTML=userinfo.logintime;
    document.getElementById("createtime").innerHTML=userinfo.createtime;
    document.getElementById("usertype").innerHTML=userinfo.usertype;


</script>
<script>
    function Delete() {
        //提交
        var URL = "../../manage/delete_user.do?id="+id.toString();
        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{},
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        alert("删除成功!");
                        window.location.href="userManage.jsp";
                    }else if (data.status == 1)
                    {
                        alert(data.toString()) ;
                    }
                },
                error:function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status);
                    alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                }
            }
        )
    }
</script>
</html>
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

            <li class="am-active">用户管理</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 添加用户
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
                                <label  class="am-u-sm-3 am-form-label">用户类型<span
                                        class="tpl-form-line-small-title">/User Type</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="usertype">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">用户名<span
                                        class="tpl-form-line-small-title">/User Name</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="username">
                                </div>
                            </div>


                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">密码<span
                                        class="tpl-form-line-small-title">/Password</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="password">
                                </div>
                            </div>


                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="Add()">确认
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
    //alert(loc);
    /*
    var n1 = loc.length;//地址的总长度
    var n2 = loc.indexOf("=");//取得=号的位置
    var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
    alert(id);
    */


</script>

<script>
    function Add() {
        //提交
        var URL = "../../manage/add_user.do";
        var newUsername =  $('#username')[0].value;
        var newPassword = $('#password')[0].value;
        var newUsertype = $('#usertype')[0].value;

        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{
                    'usertype':newUsertype,
                    'username':newUsername,
                    'password':newPassword
                },
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        alert("添加成功!");
                        window.location.href="userManage.jsp";
                    }else if (data.status == 1)
                    {
                        alert(data.msg) ;
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

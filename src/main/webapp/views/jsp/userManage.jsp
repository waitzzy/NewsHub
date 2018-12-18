<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 14:24
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
            新闻分类推荐网站 (四川大学) 管理员
        </div>
        <ol class="am-breadcrumb">
            <li><a href="manageHome.jsp" class="am-icon-home">首页</a></li>

            <li class="am-active">用户管理</li>
        </ol>

        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 用户管理列表
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
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                    <th class="table-id">用户ID</th>
                                    <th class="table-title">用户名</th>
                                    <th class="table-type">用户类型</th>
                                    <th class="table-id">密码</th>
                                    <th class="table-date am-hide-sm-only">登录时间</th>
                                    <th class="table-date am-hide-sm-only">注册时间</th>
                                    <th class="table-date am-hide-sm-only">更新时间</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody id = "user_list">
                                </tbody>
                            </table>
                            <div class="am-cf">

                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                            <hr>

                        </form>
                    </div>

                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>


    </div>
</div>

</body>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>
<script src="../js/dataTransfer.js" type="text/javascript" language="javascript" charset="utf-8"></script>

<script>

    $(document).ready(function () {
        $.ajax({
            url: '../../manage/get_user.do',//URL是巨坑！！！
            type: 'POST',//请求方式
            dataType: 'json',
            data: {},
            async: false,//是否异步请求
            success: function (data) {
                if (data.status == 1) {
                    alert(data.msg);
                } else if (data.status == 0) {
                    //var json= JSON.stringify(data);
                    //alert(json);
                    var html ="";
                    for (var i = 0; i < data.data.pageSize; i++)
                    {

                        var username = data.data.list[i].username;
                        var userid = data.data.list[i].userid;
                        var usertype =data.data.list[i].usertype;
                        var password = data.data.list[i].password;
                        var logintime = data.data.list[i].logintime;
                        var createtime = data.data.list[i].createtime;
                        var updatetime = data.data.list[i].updatetime;
                        var logintimeHTML = "";
                        var updatetimeHTML="";
                        var createtimeHTML = "";

                        if(logintime == null) {
                            logintimeHTML = "从未登录";}else{
                            logintimeHTML = timeFormat(logintime);
                        }

                        createtimeHTML = timeFormat(createtime);

                        if(updatetime == null) {
                            updatetimeHTML = "从未更新";}else{
                            updatetimeHTML = timeFormat(updatetime);
                        }

                        html="                                <tr>\n" +
                            "                                    <td><input type=\"checkbox\"></td>\n" +
                            "                                    <td>"+userid+"</td>\n" +
                            "                                    <td>"+username+"</td>\n" +
                            "                                    <td>"+usertype+"</td>\n" +
                            "                                    <td>"+password+"</td>\n" +
                            "                                    <td class=\"am-hide-sm-only\">"+logintimeHTML+"</td>\n" +
                            "                                    <td class=\"am-hide-sm-only\">"+createtimeHTML+"</td>\n" +
                            "                                    <td class=\"am-hide-sm-only\">"+updatetimeHTML+"</td>\n" +
                            "                                    <td>\n" +
                            "                                        <div class=\"am-btn-toolbar\">\n" +
                            "                                            <div id =\""+userid+"\" class=\"am-btn-group am-btn-group-xs\">\n" +
                            "                                                <button onclick=\"jumpUserEdit(this)\" class=\"am-btn am-btn-default am-btn-xs am-text-secondary\"><span class=\"am-icon-pencil-square-o\"></span> 编辑</button>\n" +
                            "                                                <button onclick=\"jumpUserAdd(this)\" class=\"am-btn am-btn-default am-btn-xs am-hide-sm-only\"><span class=\"am-icon-copy\"></span> 添加</button>\n" +
                            "                                                <button onclick=\"jumpUserDelete(this)\" class=\"am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only\"><span class=\"am-icon-trash-o\"></span> 删除</button>\n" +
                            "                                            </div>\n" +
                            "                                        </div>\n" +
                            "                                    </td>\n" +
                            "                                </tr>"
                        //alert(html);
                        var jsondata = {"userid":userid,
                            "username":username,
                            "usertype":usertype,
                            "password":password,
                            "logintime":logintimeHTML,
                            "createtime":createtimeHTML,
                            "updatetime":updatetimeHTML
                        };//构造json给session
                        sessionStorage.setItem(data.data.list[i].userid, JSON.stringify(jsondata));
                        $("#user_list").append(html);
                    }
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
                alert(textStatus);
            }
        })
    });

</script>
<script>
    function jumpUserEdit(obj){
        var id=$(obj).parent().attr("id");
        var URL = "userEdit.jsp"+"?"+"id="+id;
        //alert(URL);
        window.location.href= URL;
        window.event.returnValue=false;
    }
</script>
<script>
    function jumpUserDelete(obj){
        var id=$(obj).parent().attr('id');
        var URL = "userDelete.jsp"+"?"+"id="+id;
        //alert(URL);
        window.location.href= URL;
        window.event.returnValue=false;
    }
</script>
<script>
    function jumpUserAdd(obj){
        var URL = "userAdd.jsp";
        //alert(URL);
        window.location.href= URL;
        window.event.returnValue=false;
    }
</script>
</html>

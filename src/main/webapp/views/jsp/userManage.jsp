<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
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
<%@ include file="manageHeader.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="leftNav.jsp" %>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站 (四川大学) 管理员
        </div>


        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 列表
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
                                    <th class="table-author am-hide-sm-only">登录时间</th>
                                    <th class="table-date am-hide-sm-only">注册时间</th>
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
<script>

    $(document).ready(function () {
        $.ajax({
            url: '../../manage/get_user.do',//URL是巨坑！！！
            type: 'POST',//请求方式
            dataType: 'json',
            data: {},
            async: false,//是否异步请求
            success: function (data) {
                //如果请求成功，返回数据。
                if (data.status == 1) {
                    alert("请登录后再使用!");
                } else if (data.status == 0) {
                    //var json= JSON.stringify(data);
                    //alert(json);
                    var html ="";
                    for (var i = 0; i < data.data.pageSize; i++)
                    {
                        html="                                <tr>\n" +
                            "                                    <td><input type=\"checkbox\"></td>\n" +
                            "                                    <td>"+data.data.list[i].userid+"</td>\n" +
                            "                                    <td>"+data.data.list[i].username+"</td>\n" +
                            "                                    <td>"+data.data.list[i].usertype+"</td>\n" +
                            "                                    <td>"+data.data.list[i].password+"</td>\n" +
                            "                                    <td class=\"am-hide-sm-only\">"+data.data.list[i].logintime+"</td>\n" +
                            "                                    <td class=\"am-hide-sm-only\">"+data.data.list[i].createtime+"</td>\n" +
                            "                                    <td>\n" +
                            "                                        <div class=\"am-btn-toolbar\">\n" +
                            "                                            <div class=\"am-btn-group am-btn-group-xs\">\n" +
                            "                                                <button class=\"am-btn am-btn-default am-btn-xs am-text-secondary\"><span class=\"am-icon-pencil-square-o\"></span> 编辑</button>\n" +
                            "                                                <button class=\"am-btn am-btn-default am-btn-xs am-hide-sm-only\"><span class=\"am-icon-copy\"></span> 复制</button>\n" +
                            "                                                <button class=\"am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only\"><span class=\"am-icon-trash-o\"></span> 删除</button>\n" +
                            "                                            </div>\n" +
                            "                                        </div>\n" +
                            "                                    </td>\n" +
                            "                                </tr>"
                        alert(html);
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
</html>

<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 0:27
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
<%@ include file="header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="leftNav.jsp" %>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站 (四川大学)
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home"></a></li>
            <li><a href="#">表单</a></li>
            <li class="am-active">Amaze UI 表单</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 新闻列表
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
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default am-btn-success"><span
                                        class="am-icon-plus"></span> 新增
                                </button>
                                <button type="button" class="am-btn am-btn-default am-btn-secondary"><span
                                        class="am-icon-save"></span> 保存
                                </button>
                                <button type="button" class="am-btn am-btn-default am-btn-warning"><span
                                        class="am-icon-archive"></span> 审核
                                </button>
                                <button type="button" class="am-btn am-btn-default am-btn-danger"><span
                                        class="am-icon-trash-o"></span> 删除
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search"
                    type="button"></button>
          </span>
                        </div>
                    </div>
                </div>

                <ul class="tpl-task-list tpl-task-remind" id="news_title_list">


                    <!-- 新闻显示 -->
                </ul>
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

        var loc = location.href;
        alert(loc)
        var n1 = loc.length;//地址的总长度
        var n2 = loc.indexOf("=");//取得=号的位置
        var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
        alert(id);


        $.ajax({
            url: '../../news/get_title_list.do'+'?'+'label='+id,//URL是巨坑！！！
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
                        html="                    <li>\n" +
                            "                        <div class=\"cosB\">\n" +
                            "                            1天前\n" +
                            "                        </div>\n" +
                            "                        <div class=\"cosA\">\n" +
                            "                                <span class=\"cosIco label-warning\">\n" +
                            "                        <i class=\"am-icon-plus\"></i>\n" +
                            "                      </span>\n" +
                            "\n" +
                            "                            <span onclick=\"viewDetail(this)\" id="+data.data.list[i].newsid+"> "+
                            data.data.list[i].newstitle+"</span>\n" +
                            "                        </div>\n" +
                            "\n" +
                            "                    </li>";
                        alert(html);
                        $("#news_title_list").append(html);
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


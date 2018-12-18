<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 0:27
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
<script src="../js/dataTransfer.js" type="text/javascript" language="javascript" charset="utf-8"></script>

<body data-type="generalComponents">
<%@ include file="header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="leftNav.jsp" %>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站 (四川大学)
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li class="am-active">分类新闻</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold"  id="classification">
                    <span class="am-icon-code"></span>
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
<script src="../js/dataTransfer.js" type="text/javascript" language="javascript" charset="utf-8"></script>



<script>

    $(document).ready(function () {

        var loc = location.href;
        //alert(loc)
        var n1 = loc.length;//地址的总长度
        var n2 = loc.indexOf("=");//取得=号的位置
        var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
        //alert(id);
        document.getElementById("classification").innerText = "</>"+"新闻列表"+numToLabel(id)+"类";


        $.ajax({
            url: '../../news/get_title_list.do'+'?'+'label='+id,//URL是巨坑！！！
            type: 'POST',//请求方式
            dataType: 'json',
            data: {},
            async: false,//是否异步请求
            success: function (data) {
                //如果请求成功，返回数据。
                if (data.status == 1) {
                    alert(data.msg);
                } else if (data.status == 0) {
                    //var json= JSON.stringify(data);
                    //alert(json);
                    var html ="";

                    for (var i = 0; i < data.data.pageSize; i++)
                    {
                        var label = data.data.list[i].newslabel;
                        var labelHTML = numToLabel(label);
                        html="                    <li>\n" +
                            "                        <div class=\"cosB\">\n" +
                            "                            "+labelHTML+"\n" +
                            "                        </div>\n" +
                            "                        <div class=\"cosA\">\n" +
                            "                                <span class=\"tpl-label-info\">\n" +labelHTML+

                            "                      </span>\n" +
                            "\n" +
                            "                            <span onclick=\"viewDetail(this)\" id="+data.data.list[i].newsid+"> "+
                            data.data.list[i].newstitle+"</span>\n" +
                            "                        </div>\n" +
                            "\n" +
                            "                    </li>";
                        //alert(html);
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


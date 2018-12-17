<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/15
  Time: 13:14
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

<%@ include file="header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">


    <%@ include file="leftNav.jsp" %>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            新闻分类推荐网站(四川大学)
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li class="am-active">新闻正文</li>
        </ol>
        <div class="tpl-content-scope">
            <h2 id="newsTitle">
                <span class="close" data-close="note"></span>
            </h2>
            <div class="note note-info">

                <p>
                    <span class="label label-danger" >新闻ID</span>
                    <span id="newsID"></span>
                </p>

                <p>
                    <span class="label label-success" >新闻来源</span>
                    <span id="newsSource"></span>
                </p>

                <p>
                    <span class="label label-warning" >标签</span>
                    <span id="newsLabel"></span>
                </p>

                <p>
                    <span class="label label-danger" >发布时间</span>
                    <span id="newsTime"></span>
                </p>

                <p>
                    <span class="label label-success" >爬取时间</span>
                    <span id="newsCrawlTime"></span>
                </p>

                <p>
                    <span class="label label-warning" >更新时间</span>
                    <span id="updateTime"></span>
                </p>

                <p id = 'newsContent'></p>

            </div>
        </div>
    </div>


</div>

</body>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>

<script src="../js/dataTransfer.js" type="text/javascript" language="javascript" charset="utf-8"></script>
<script >
    var loc = location.href;
    //alert(loc)
    var n1 = loc.length;//地址的总长度
    var n2 = loc.indexOf("=");//取得=号的位置
    var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
    //alert(id);

    var URL ='../../news/get_detail_news.do'+'?'+'newsId='+id;
    $.ajax({
        url: URL,
        type:'POST',
        detaType:'json',
        data:{},
        async: false,
        success:function (obj) {
            if(obj.status == 0){
                //alert("success");
                var label = obj.data.newslabel;
                var newscrawltime = obj.data.newscrawltime;
                var updatetime = obj.data.updatetime;
                //alert(label + numToLabel(label));
                document.getElementById("newsTitle").innerHTML=obj.data.newstitle;
                document.getElementById("newsID").innerHTML=obj.data.newsid;
                document.getElementById("newsSource").innerHTML=obj.data.newssource;
                document.getElementById("newsLabel").innerHTML=numToLabel(label);
                document.getElementById("newsTime").innerHTML= obj.data.newstime;
                document.getElementById("newsCrawlTime").innerHTML= timeFormat(newscrawltime);
                if(updatetime != null){
                    document.getElementById("updateTime").innerHTML= timeFormat(updatetime);}
                else{
                    document.getElementById("updateTime").innerHTML= "从未更新";
                }
                document.getElementById("newsContent").innerHTML=obj.data.newscontent;
            }else if(obj.status == 1){
                alert(obj.msg);
            }
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
        }
    })

</script>

<script src="../js/newsAjax.js"></script>


</html>

<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/15
  Time: 13:14
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
            新闻分类推荐网站
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li class="am-active">新闻正文</li>
        </ol>
        <div class="tpl-content-scope">
            <div class="note note-info">
                <h3 id="newsTitle">TitleTest
                    <span class="close" data-close="note"></span>
                </h3>
                <p>
                    <span class="label label-success" >新闻ID</span>
                    <span id="newsID">Amaze UI 关注中文排版，根据用户代理调整字体，实现更好的中文排版效果。</span>
                </p>
                <p>
                    <span class="label label-success" >原文URL</span>
                    <span id="newsSource">Amaze UI 关注中文排版，根据用户代理调整字体，实现更好的中文排版效果。</span>
                </p>
                <p>
                    <span class="label label-success" >标签</span>
                    <span id="newsLabel">Amaze UI 关注中文排版，根据用户代理调整字体，实现更好的中文排版效果。</span>
                </p>
                <p>
                    <span class="label label-success" >发布时间</span>
                    <span id="newsTime">1</span>
                </p>
                <p>
                    <span class="label label-success" >爬取时间</span>
                    <span id="newsCrawlTime">1</span>
                </p>
                <p id = 'newsContent'> Amaze UI 含近 20 个 CSS 组件、20 余 JS 组件，更有多个包含不同主题的 Web 组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。</p>

            </div>
        </div>
    </div>


</div>

</body>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>

<script >

    var loc = location.href;
    alert(loc)
    var n1 = loc.length;//地址的总长度
    var n2 = loc.indexOf("=");//取得=号的位置
    var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
    alert(id);

    var URL ='../../news/get_detail_news.do'+'?'+'newsId='+id;
    $.ajax({
        url: URL,
        type:'POST',
        detaType:'json',
        data:{},
        async: false,
        success:function (obj) {
            if(obj.status == 0){
                alert("success");
                document.getElementById("newsTitle").innerHTML=obj.data.newstitle;
                document.getElementById("newsID").innerHTML=obj.data.newsid;
                document.getElementById("newsSource").innerHTML=obj.data.newssource;
                document.getElementById("newsLabel").innerHTML=obj.data.newslabel;
                document.getElementById("newsTime").innerHTML=obj.data.newstime;
                document.getElementById("newsCrawlTime").innerHTML=obj.data.newscrawltime;
                document.getElementById("newsContent").innerHTML=obj.data.newscontent;
            }else if(obj.status ==1){
                alert("发生错误");
            }
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
        }
    })
    //document.write(id)

</script>>

<script src="../js/newsAjax.js"></script>
</html>

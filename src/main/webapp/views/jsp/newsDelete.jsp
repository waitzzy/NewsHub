<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 21:34
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
                                <label  class="am-u-sm-3 am-form-label">新闻ID<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="newsid" class="am-u-sm-3 am-form-label"> </a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻标题<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="newstitle" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻来源<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="newssource" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>


                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻标签<span
                                        class="tpl-form-line-small-title">Password</span></label>
                                <div class="am-u-sm-9">
                                    <a id="newslabel" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻时间<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="newstime" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">爬取时间<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="newscrawltime" class="am-u-sm-3 am-form-label"> type</a>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">更新时间<span
                                        class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <a id="updatetime" class="am-u-sm-3 am-form-label"> type</a>
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

    var newsInfo = sessionStorage.getItem(id);
    newsinfo = JSON.parse(newsInfo);
    document.getElementById("newsid").innerHTML=newsinfo.newsid;
    document.getElementById("newstitle").innerHTML=newsinfo.newstitle;
    document.getElementById("newssource").innerHTML=newsinfo.newssource;
    document.getElementById("newstime").innerHTML=newsinfo.newstime;
    document.getElementById("updatetime").innerHTML=newsinfo.updatetime;
    document.getElementById("newscrawltime").innerHTML=newsinfo.newscrawltime;
    document.getElementById("newslabel").innerHTML=newsinfo.newslabel;


</script>
<script>
    function Delete() {
        //提交
        var URL = "../../manage/delete_news.do?id="+id.toString();
        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{},
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        alert("删除成功!");
                        window.location.href="newsManage.jsp";
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
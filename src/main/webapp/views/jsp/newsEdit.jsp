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

            <li class="am-active">新闻管理</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 新闻编辑
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
                                        class="tpl-form-line-small-title">/News ID</span></label>
                                <div class="am-u-sm-9">
                                    <small id="newsid"></small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻标题<span
                                        class="tpl-form-line-small-title">/News Title</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newstitle">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻来源<span
                                        class="tpl-form-line-small-title">/News Source</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newssource">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻标签<span
                                        class="tpl-form-line-small-title">/News Label</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newslabel">

                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻时间<span
                                        class="tpl-form-line-small-title">/News Time</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newstime">

                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">更新时间<span
                                        class="tpl-form-line-small-title">/Update Time</span></label>
                                <div class="am-u-sm-9">
                                    <small id = "updatetime"></small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">爬取时间<span
                                        class="tpl-form-line-small-title">/Crawl Time</span></label>
                                <div class="am-u-sm-9">
                                    <small id = "newscrawltime"></small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻内容<span
                                        class="tpl-form-line-small-title">/News Content</span></label>
                                <div class="am-u-sm-9">
                                    <textarea class="" rows="20" id="newscontent"></textarea>
                                </div>
                            </div>




                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="NewsEdit()">确认
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
<script src="../js/dataTransfer.js" type="text/javascript" language="javascript" charset="utf-8"></script>


<script>
    var loc = location.href;
    //alert(loc)
    var n1 = loc.length;//地址的总长度
    var n2 = loc.indexOf("=");//取得=号的位置
    var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
    //alert(id);

    var newsInfo = sessionStorage.getItem(id);
    newsinfo = JSON.parse(newsInfo);
    document.getElementById("newsid").innerHTML=newsinfo.newsid;
    $("#newstitle").val(newsinfo.newstitle);
    $("#newslabel").val(newsinfo.newslabel);
    $("#newscontent").val(newsinfo.newscontent);
    $("#newssource").val(newsinfo.newssource);
    $("#newstime").val(newsinfo.newstime);
    document.getElementById("newscrawltime").innerHTML=newsinfo.newscrawltime;
    document.getElementById("updatetime").innerHTML=newsinfo.updatetime;
</script>

<script>
    function NewsEdit() {
        //提交
        var URL = "../../manage/change_news.do";
        var newsid = newsinfo.newsid;
        var newscrawltime = newsinfo.newscrawltime;
        var NewNewstitle = $('#newstitle')[0].value;
        var NewNewssource = $('#newssource')[0].value;
        var NewNewscontent =$('#newscontent')[0].value;
        var NewNewstime = $('#newstime')[0].value;
        var GetNewslabel = $('#newslabel')[0].value;
        var NewNewslabel = labelToNum(GetNewslabel);
        //alert(NewNewslabel);

        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{
                    'id':newsid,
                    'newstitle':NewNewstitle,
                    'newscontent':NewNewscontent,
                    'newslabel':NewNewslabel,
                    'newssource':NewNewssource,
                    'newstime': NewNewstime,
                    'newscrawltime':newscrawltime
                },
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        alert(data.msg);
                        window.location.href="newsManage.jsp";
                    }else if (data.status == 1)
                    {
                        alert(data.msg);
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

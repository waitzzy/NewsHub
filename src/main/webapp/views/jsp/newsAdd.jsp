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
            <li><a href="userManage.jsp" class="am-icon-home">首页</a></li>

            <li class="am-active">新闻管理</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 添加新闻
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
                                <label  class="am-u-sm-3 am-form-label">新闻标题<span
                                        class="tpl-form-line-small-title">/News Title</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newstitle">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">新闻标签<span
                                        class="tpl-form-line-small-title">News Label</span></label>
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
                                <label  class="am-u-sm-3 am-form-label">新闻来源<span
                                        class="tpl-form-line-small-title">/News Time</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="newssource">
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
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="NewsAdd()">确认
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
    function NewsAdd() {
        //提交
        var URL = "../../manage/add_news.do";
        var newNewstitle =  $('#newstitle')[0].value;
        var newNewstime  = $('#newstime')[0].value;
        var newNewscontent = $('#newscontent')[0].value;
        var newNewssource =$('#newssource')[0].value;
        var GetNewslabel = $('#newslabel')[0].value;
        var newNewslabel = labelToNum(GetNewslabel);

        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{
                    'newstitle':newNewstitle,
                    'newscontent':newNewscontent,
                    "newslabel":newNewslabel,
                    "newstime":newNewstime,
                    "newssource":newNewssource,
                    "newscrawltime":"管理员添加"
                },
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        alert("添加成功!");
                        window.location.href="newsManage.jsp";
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

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

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <a href="javascript:;" class="tpl-logo">
            <img src="../assets/img/logo.png" alt="">
        </a>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-comment-o"></span> 按照类型分类 </span>
                </a>
                <ul class="am-dropdown-content tpl-dropdown-content">
                    <li class="tpl-dropdown-content-external">
                        <h3>共计 <span class="tpl-color-danger">7</span> 个分类</h3></li>
                    <li>
                        <a  class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">教学</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 课程、考试等信息 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">活动</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 课外活动、社团活动 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">竞赛</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 各类学科竞赛信息 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">科研</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 各类论文发表、科研进展</span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">学术</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 学术报告、学术交流 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">国际</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 各类出国交流访问信息 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="../assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from" onclick = "displayNews(this)">就业</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 最新就业咨询 </span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-calendar"></span> 按照来源分类 </span>
                </a>
                <ul class="am-dropdown-content tpl-dropdown-content">
                    <li class="tpl-dropdown-content-external">
                        <h3>共有 <span class="tpl-color-primary">7</span> 个来源网站</h3></li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">教务处 </span>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">学工部 </span>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">青春川大 </span>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">就业网 </span>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">计算机学院 </span>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">大学官网 </span>
                                </span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick">个人中心</span><span class="tpl-header-list-user-ico"> <img src="../assets/img/user01.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="personal.jsp"><span class="am-icon-bell-o"></span> 个人信息</a></li>
                    <li><a href="changeInfo.jsp"><span class="am-icon-cog"></span> 修改密码</a></li>
                    <li><a href="../../index.jsp"><span class="am-icon-power-off"></span> 退出账户</a></li>
                </ul>
            </li>
            <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>






<div class="tpl-page-container tpl-page-header-fixed">

    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            友情链接
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="home.jsp" class="nav-link active">
                        <i class="am-icon-home"></i>
                        <span>首页</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://www.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>学校官网</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">
                            hot
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://jwc.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>教务处</span>
                        <i class="tpl-left-nav-content tpl-badge-success">
                            10+
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://xsc.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>学工部</span>
                        <i class="tpl-left-nav-content tpl-badge-primary">
                            new
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://youth.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>青春川大</span>
                        <i class="tpl-left-nav-content tpl-badge-success">
                            10+
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://gs.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>研究生网</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">
                            hot
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://zhjw.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>教务系统</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">
                            hot
                        </i>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="http://mail.scu.edu.cn" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>邮件系统</span>
                        <i class="tpl-left-nav-content tpl-badge-primary">
                            test
                        </i>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-wpforms"></i>
                        <span>学院网站</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
                        <li>
                            <a href="http://cs.scu.edu.cn">
                                <i class="am-icon-angle-right"></i>
                                <span>计算机学院</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://sw.scu.edu.cn">
                                <i class="am-icon-angle-right"></i>
                                <span>软件学院</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://math.scu.edu.cn">
                                <i class="am-icon-angle-right"></i>
                                <span>数学学院</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--
                                <li class="tpl-left-nav-item">
                                    <a href="login.html" class="nav-link tpl-left-nav-link-list">
                                        <i class="am-icon-key"></i>
                                        <span>首页</span>
                                    </a>
                                </li>
                                -->
            </ul>
        </div>
    </div>



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


<script>
    function displayNews(e){
        var id = $(e).text();
        if(id == "教学"){ id=1;}
        else if(id == "活动"){ id =2;}
        else if(id == "竞赛"){ id =3;}
        else if(id == "科研"){ id =4;}
        else if(id == "学术"){ id =5;}
        else if(id == "国际"){ id =6;}
        else if(id == "就业"){ id =7;}

        var URL = '../../news/get_title_list.do'+'?'+'label='+id.toString();
        //alert(URL);
        $.ajax({
                url: URL,
                type: 'POST',
                dataType : 'json',
                data:{},
                async: false,
                success:function (data) {
                    if(data.status == 0 ){
                        document.getElementById("news_title_list").innerHTML='';
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
                                "                            <span id="+data.data.list[i].newsid+"> "+
                                data.data.list[i].newstitle+"</span>\n" +
                                "                        </div>\n" +
                                "\n" +
                                "                    </li>";
                            $("#news_title_list").append(html);
                        }

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
<script>
    $(document).ready(function () {
        $.ajax({
            url: '../../news/get_title_list.do',//URL是巨坑！！！
            type: 'POST',//请求方式
            dataType: 'json',
            data: {},
            async: false,//是否异步请求
            success: function (data) {   //如果请求成功，返回数据。
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
                            "                            <span id="+data.data.list[i].newsid+"> "+
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
    })
</script>
</html>

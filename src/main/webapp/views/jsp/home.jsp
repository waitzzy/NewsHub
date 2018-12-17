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
<!--
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
-->






<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="leftNav.jsp" %>
<!--

    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            友情链接
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="newsDetail.jsp" class="nav-link active">
                        <i class="am-icon-home"></i>
                        <span>测试</span>
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

                                //<li class="tpl-left-nav-item">
                                //    <a href="login.html" class="nav-link tpl-left-nav-link-list">
                               //         <i class="am-icon-key"></i>
                                //        <span>首页</span>
                            //        </a>
                           //     </li>

            </ul>
        </div>
    </div>

-->

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
        $.ajax({
            url: '../../news/get_title_list.do',//URL是巨坑！！！
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

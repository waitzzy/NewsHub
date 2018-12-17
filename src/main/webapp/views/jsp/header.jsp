<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/15
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="../assets/css/admin.css">
    <link rel="stylesheet" href="../assets/css/app.css">
</head>
<body>
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

                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;" onclick = "RecommendNews()" >
                    <span class="am-icon-comment-o" ></span> 新闻推荐
                </a>
            </li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>

                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-comment-o"></span> 按照类型分类
                </a>
                <ul class="am-dropdown-content tpl-dropdown-content">
                    <li class="tpl-dropdown-content-external">
                        <h3>共计 <span class="tpl-color-danger">7</span>个分类</h3></li>
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
            <!--
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
            -->
            <li class="am-hide-sm-only">
                <a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link">
                    <span class="am-icon-arrows-alt"></span>
                    <span class="admin-fullText">开启全屏</span>
                </a>
            </li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick">个人中心</span><span class="tpl-header-list-user-ico"> <img src="../assets/img/user01.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="personal.jsp"><span class="am-icon-bell-o"></span> 个人信息</a></li>
                    <li><a href="changeInfo.jsp"><span class="am-icon-cog"></span> 修改密码</a></li>
                    <li><a href="signin.jsp"><span class="am-icon-power-off"></span> 退出账户</a></li>
                </ul>
            </li>
            <li><a href="signin.jsp" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>
</body>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/amazeui.min.js"></script>
<script src="../assets/js/app.js"></script>
</html>
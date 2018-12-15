<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <%-- Bootstrap --%>
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="../css/cover.css" rel="stylesheet">
    <link href="../css/signin.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="../assets/css/admin.css">
    <link rel="stylesheet" href="../assets/css/app.css">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">NewsHub</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">按内容分类
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/views/admin/###.jsp">教学</a></li>
                            <li><a href="/views/admin/###.jsp">活动</a></li>
                            <li><a href="/views/admin/###.jsp">竞赛</a></li>
                            <li><a href="/views/admin/###.jsp">科研</a></li>
                            <li><a href="/views/admin/###.jsp">学术</a></li>
                            <li><a href="/views/admin/###.jsp">留学</a></li>
                            <li><a href="/views/admin/###.jsp">就业</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                            aria-haspopup="true" aria-expanded="false">按来源分类
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/views/admin/###.jsp">教务处</a></li>
                            <li><a href="/views/admin/###.jsp">学工部</a></li>
                            <li><a href="/views/admin/###.jsp">青春川大</a></li>
                            <li><a href="/views/admin/###.jsp">就业网</a></li>
                            <li><a href="/views/admin/###.jsp">招生网</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">新闻搜索 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/views/admin/###.jsp">按时间</a></li>
                            <li><a href="/views/admin/###.jsp">按内容</a></li>
                            <li><a href="/views/admin/###.jsp">按来源</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">新闻推荐</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="personal.jsp">个人中心<span class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
</head>
<body>
<div class="tpl-page-container">
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
            Amaze UI 表单
        </div>
        <ol class="am-breadcrumb">
            <li><a href="home.jsp" class="am-icon-home">首页</a></li>
            <li><a href="changeInfo.jsp">修改信息</a></li>
            <li><a href="../../WEB-INF/index.jsp" class="am-active">退出登录</a></li>
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
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."></div>
                    </div>
                </div>


            </div>
            <div class="tpl-block ">

                <div class="am-g tpl-amazeui-form">


                    <div class="am-u-sm-12 am-u-md-9">
                        <form class="am-form am-form-horizontal">
                            <div class="am-form-group">
                                <label for="user-name" class="am-u-sm-3 am-form-label">姓名 / Name</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="user-name" placeholder="姓名 / Name">
                                    <small>输入你的名字，让我们记住你。</small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
                                <div class="am-u-sm-9">
                                    <input type="email" id="user-email" placeholder="输入你的电子邮件 / Email">
                                    <small>邮箱你懂得...</small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
                                <div class="am-u-sm-9">
                                    <input type="tel" id="user-phone" placeholder="输入你的电话号码 / Telephone">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
                                <div class="am-u-sm-9">
                                    <input type="number" pattern="[0-9]*" id="user-QQ" placeholder="输入你的QQ号码">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="user-weibo" class="am-u-sm-3 am-form-label">微博 / Twitter</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="user-weibo" placeholder="输入你的微博 / Twitter">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
                                <div class="am-u-sm-9">
                                    <textarea class="" rows="5" id="user-intro" placeholder="输入个人简介"></textarea>
                                    <small>250字以内写出你的一生...</small>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="button" class="am-btn am-btn-primary">保存修改</button>
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
>
<script src="../js/temp.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="../js/amazeui.min.js"></script>
<script src="../js/app.js"></script>
</body>
<script src="../js/userAjax.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>

</script>
</html>
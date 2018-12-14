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
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">所有类别</option>
                                <option value="option2">IT业界</option>
                                <option value="option3">数码产品</option>
                                <option value="option3">笔记本电脑</option>
                                <option value="option3">平板电脑</option>
                                <option value="option3">只能手机</option>
                                <option value="option3">超极本</option>
                            </select>
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

                <ul class="tpl-task-list tpl-task-remind">
                    <li>
                        <div class="cosB">
                            12分钟前
                        </div>
                        <div class="cosA">
                            <span class="cosIco">
                                <i class="am-icon-bell-o"></i>
                            </span>
                            <span id="news_1"> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。
                                <span class="tpl-label-info"> 提取文件
                                <i class="am-icon-share"></i>
                                </span>
                            </span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            36分钟前
                        </div>
                        <div class="cosA">
                            <span class="cosIco label-danger">
                                <i class="am-icon-bolt"></i>
                            </span>
                            <span id="news_2"> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                        </div>
                    </li>

                    <li>
                        <div class="cosB">
                            2小时前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                            <span id="news_3"> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            1天前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-warning">
                        <i class="am-icon-plus"></i>
                      </span>

                            <span id="news_4"> 部分用户反应在过长的 Tabs 中滚动页面时会意外触发 Tab 切换事件，用户可以选择禁用触控操作。</span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            12分钟前
                        </div>
                        <div class="cosA">
                                <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>
                            <span id="news_5"> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。<span
                                    class="tpl-label-info"> 提取文件
                                                            <i class="am-icon-share"></i>
                                                        </span></span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            36分钟前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-danger">
                        <i class="am-icon-bolt"></i>
                      </span>

                            <span id="news_6"> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                        </div>

                    </li>

                    <li>
                        <div class="cosB">
                            2小时前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                            <span id="news_7"> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            2小时前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                            <span id="news_8"> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            2小时前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                            <span id="news_9"> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                        </div>

                    </li>
                    <li>
                        <div class="cosB">
                            2小时前
                        </div>
                        <div class="cosA">
                                <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                            <span id="news_10"> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                        </div>

                    </li>
                </ul>
            </div>

        </div>

    </div>

</div>
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
                    for (var i = 0; i < data.data.pageSize; i++) {
                        var newsID = "news_" + (i+1).toString();
                        document.getElementById(newsID).innerHTML = data.data.list[i].newstitle;
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


<!--

<html>
<head>
<title>Title</title>
<%-- Bootstrap --%>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<%-- Custom styles for this template --%>
<link href="css/navbar-fixed-top.css" rel="stylesheet">
</head>
<body>
<h2>Hello World!</h2>
<div class="inner cover">
<div class="form-signin">
<h2 class="form-signin-heading">请填写信息</h2>
<input type="text" id="user" class="form-control" placeholder="用户名" required autofocus>
<input type="password" id="password" class="form-control" placeholder="密码" required autofocus>
<div class="span12"><br></div>
<button class="btn btn-lg btn-primary btn-block" onclick="check()">登陆</button>
<button class="btn btn-lg btn-warning btn-block">注册</button>
</div>
</div>
</body>
<script src="views/js/userAjax.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="views/js/jquery-3.3.1.min.js"></script>
<script src="views/js/bootstrap.min.js"></script>
<script>
function check() {
var userName = $('#user')[0].value;
console.log(userName);
var passWord = $('#password')[0].value;
console.log(passWord);
$.ajax({
type: 'POST',
url: 'user/login.do',
data: 'username=' + userName + '&password=' + passWord,
success: function (data) {
if (data.status == 0) {
window.location.href = "views/jsp/signin.jsp";
} else {
window.location.href = "views/jsp/signin_no.jsp";
}
}
});
}
</script>
</html>
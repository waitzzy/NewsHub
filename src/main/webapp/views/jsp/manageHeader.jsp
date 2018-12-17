<%--
  Created by IntelliJ IDEA.
  User: wait
  Date: 2018/12/16
  Time: 13:53
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

<body data-type="generalComponents">

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <a href="javascript:;" class="tpl-logo">
            <img src="../assets/img/logo.png" alt="">
        </a>
    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" onclick="JumpUM()">
                    <span class="am-icon-comment-o"></span>用户管理
                </a>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" onclick="JumpNM()">
                    <span class="am-icon-calendar"></span>新闻管理
                </a>
            </li>
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick">个人中心</span><span class="tpl-header-list-user-ico"> <img src="../assets/img/user02.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="managePersonal.jsp"><span class="am-icon-bell-o"></span> 个人信息</a></li>
                    <li><a href="manageChangeInfo.jsp"><span class="am-icon-cog"></span> 修改密码</a></li>
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
<script>
    function JumpNM(){
        location.href="newsManage.jsp";
    }
    function JumpUM(){
        location.href="userManage.jsp";
    }
</script>
</html>

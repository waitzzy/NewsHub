
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <%-- Bootstrap --%>
    <link href="views/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <%-- Custom styles for this template --%>
    <link href="views/css/cover.css" rel="stylesheet">
    <link href="views/css/signin.css" rel="stylesheet" media="screen">
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
<script src="views/js/userAjax.js"></script>
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
            async : false,
            success: function (data) {
                if (data.status == 0) {
                    sessionStorage.setItem('userInfo', JSON.stringify(data));
                    window.location.href = "views/jsp/home.jsp";
                } else {
                    window.location.href = "views/jsp/signin_no.jsp";
                }
            }
        });
    }
</script>
</html>

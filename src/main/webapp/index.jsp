<%@page pageEncoding="UTF-8"%>
<html>
<body>
<h2>Hello World!</h2>
<button>登陆</button>
</body>
<script src="js/temp.js?ver=1"></script>
<%-- Bootstrap --%>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $("button").click(function () {
            $.post("login.do",{
                user : "wait",
                password : "wait"
            },
            function (data) {
                if(data.status == 0){
                    window.location.href = "signin";
                }
            });
        });
    });
</script>
</html>

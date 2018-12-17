function logIn() {
    var userName = $('#user')[0].value;
    console.log(userName);
    var passWord = $('#password')[0].value;
    console.log(passWord);
    if(userName == null||passWord == null){
        alert("请填写完整用户名和密码!");
    }else{
        $.ajax({
            type: 'POST',
            url: '../../user/login.do',
            data: 'username=' + userName + '&password=' + passWord,
            async : false,
            success: function (data) {
                if (data.status != 0) {
                    alert(data.msg);
                } else {
                    sessionStorage.setItem('userInfo', JSON.stringify(data));
                    if (data.data.usertype == "user") {
                        window.location.href = "home.jsp";
                    } else if (data.data.usertype == "admin") {
                        window.location.href = "manageHome.jsp";
                    } else {
                        alert(data.msg);
                    }
                }
            }
        });
    }

}

function change() {
    var html = "";
    html += "<form class=\"form-signin\">";
    html += "<h2 class=\"form-signin-heading\">请填写信息</h2>";
    html += "<input id = \"username\" type=\"text\" name=\"user\" class=\"form-control\" placeholder=\"用户名\" required autofocus>";
    html += "<input id = \"password\" type=\"text\" name=\"password\" class=\"form-control\" placeholder=\"密码\" required autofocus>";
    html += "<input id = \"usertype\" type=\"text\" name=\"section\" class=\"form-control\" placeholder=\"用户类型\" required autofocus>";
    html += "<div class=\"span12\"><br></div>";
    html += "<button onclick=\"Register()\" class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">注册</button>";
    html += "</form>";
    document.getElementById("form").innerHTML = html;
}

function Register(){

    var userName = $('#username')[0].value;
    //console.log(userName);
    var passWord = $('#password')[0].value;
    //console.log(passWord);
    var userType = $('#usertype')[0].value;

    if(userName == null ||passWord == null ||userType == null){
        alert("请填写完整注册信息!");
    }else{
        if(userType != "admin" && userType != "user"){
            alert("请输入正确的用户类型!");
        }
        else{
            $.ajax({
                type: 'POST',
                url: '../../user/register.do',
                data: {
                    'username':userName,
                    'password':passWord,
                    'usertype':userType
                },
                async : false,
                success: function (data) {
                    if (data.status != 0) {
                        alert(data.msg);
                    } else {
                        alert(data.msg);
                        window.location.href="signin.jsp";
                    }
                }
            });
        }

    }

}
/*
function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}

function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg); //匹配目标参数
    if(r != null) return decodeURI(r[2]); //decodeURI参数内容。
    return null; //返回参数值
}
*/
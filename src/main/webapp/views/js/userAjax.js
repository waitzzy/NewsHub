var signinAddress = "/newshub/views/jsp/signin.jsp";
var  signinNoAddress = "/newshub/views/jsp/signin_no.jsp";

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
                window.location.href = signinAddress;
            } else {
                window.location.href = signinNoAddress + "?msg=" + encodeURI(data.msg);
            }
        }
    });
}

function change() {
    var html = "";
    html += "<form class=\"form-signin\" action=\"/views/admin/user_register_ok.jsp\" method=\"post\">";
    html += "<h2 class=\"form-signin-heading\">请填写信息</h2>";
    html += "<input type=\"text\" name=\"user\" class=\"form-control\" placeholder=\"用户名\" required autofocus>";
    html += "<input type=\"text\" name=\"password\" class=\"form-control\" placeholder=\"密码\" required autofocus>";
    html += "<input type=\"text\" name=\"section\" class=\"form-control\" placeholder=\"身份\" required autofocus>";
    html += "<div class=\"span12\"><br></div>";
    html += "<button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">注册</button>";
    html += "</form>";
    document.getElementById("form").innerHTML = html;
}

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
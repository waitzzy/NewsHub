function add() {
    window.location.href = "/views/admin/register.jsp";
}

function data_add() {
    window.location.href = "/views/admin/data_register.jsp";
}

function remove(url) {
    if (confirm("确定要删除吗？")) {
        window.location.href = "/views/admin/delete.jsp?id=" + url;
    }
}

function data_remove() {
    if (confirm("确定要删除吗？")) {
        window.location.href = "/views/data_delete.jsp";
    }
}

function change() {
    window.location.href = "/views/admin/change.jsp";
}

function data_change() {
    window.location.href = "/views/data_change.jsp";
}

function re() {
    window.location.href = "/views/admin/homelist.jsp";
}

function data_re() {
    window.location.href = "/views/admin/data_homelist.jsp";
}

function pr() {
    window.location.href = "/views/admin/print.jsp";
}

function data_pr() {
    window.location.href = "/views/data_print.jsp";
}

function man() {
    window.location.href = "/views/admin/management.jsp";
}

function data_man() {
    window.location.href = "/views/data_management.jsp";
}

function home() {
    window.location.href = "/views/admin/signin.jsp";
}

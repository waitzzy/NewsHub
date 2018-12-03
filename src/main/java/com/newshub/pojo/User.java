package com.newshub.pojo;

import java.util.Date;

public class User {
    private Integer userid;

    private String username;

    private String password;

    private Date logintime;

    private String usertype;

    private Date createtime;

    private Date updatetime;

    public User(Integer userid, String username, String password, Date logintime, String usertype, Date createtime, Date updatetime) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.logintime = logintime;
        this.usertype = usertype;
        this.createtime = createtime;
        this.updatetime = updatetime;
    }

    public User() {
        super();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype == null ? null : usertype.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}
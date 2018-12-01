package com.newshub.pojo;

import java.util.Date;

public class History {
    private Integer historyid;

    private Integer userid;

    private Integer newsid;

    private Integer viewedtimes;

    private Date createTime;

    private Date updateTime;

    public History(Integer historyid, Integer userid, Integer newsid, Integer viewedtimes, Date createTime, Date updateTime) {
        this.historyid = historyid;
        this.userid = userid;
        this.newsid = newsid;
        this.viewedtimes = viewedtimes;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public History() {
        super();
    }

    public Integer getHistoryid() {
        return historyid;
    }

    public void setHistoryid(Integer historyid) {
        this.historyid = historyid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public Integer getViewedtimes() {
        return viewedtimes;
    }

    public void setViewedtimes(Integer viewedtimes) {
        this.viewedtimes = viewedtimes;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
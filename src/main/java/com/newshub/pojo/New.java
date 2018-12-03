package com.newshub.pojo;

import java.util.Date;

public class New {
    private Integer newsid;

    private String newstitle;

    private Date newscrawltime;

    private String newssource;

    private String newslabel;

    private Date newstime;

    private Date updateTime;

    private String newscontent;

    public New(Integer newsid, String newstitle, Date newscrawltime, String newssource, String newslabel, Date newstime, Date updateTime, String newscontent) {
        this.newsid = newsid;
        this.newstitle = newstitle;
        this.newscrawltime = newscrawltime;
        this.newssource = newssource;
        this.newslabel = newslabel;
        this.newstime = newstime;
        this.updateTime = updateTime;
        this.newscontent = newscontent;
    }

    public New() {
        super();
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle == null ? null : newstitle.trim();
    }

    public Date getNewscrawltime() {
        return newscrawltime;
    }

    public void setNewscrawltime(Date newscrawltime) {
        this.newscrawltime = newscrawltime;
    }

    public String getNewssource() {
        return newssource;
    }

    public void setNewssource(String newssource) {
        this.newssource = newssource == null ? null : newssource.trim();
    }

    public String getNewslabel() {
        return newslabel;
    }

    public void setNewslabel(String newslabel) {
        this.newslabel = newslabel == null ? null : newslabel.trim();
    }

    public Date getNewstime() {
        return newstime;
    }

    public void setNewstime(Date newstime) {
        this.newstime = newstime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getNewscontent() {
        return newscontent;
    }

    public void setNewscontent(String newscontent) {
        this.newscontent = newscontent == null ? null : newscontent.trim();
    }
}
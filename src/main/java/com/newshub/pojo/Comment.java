package com.newshub.pojo;

import java.util.Date;

public class Comment {
    private Integer commentid;

    private Integer newsid;

    private Date updatetime;

    private String commentcontent;

    public Comment(Integer commentid, Integer newsid, Date updatetime, String commentcontent) {
        this.commentid = commentid;
        this.newsid = newsid;
        this.updatetime = updatetime;
        this.commentcontent = commentcontent;
    }

    public Comment() {
        super();
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentcontent) {
        this.commentcontent = commentcontent == null ? null : commentcontent.trim();
    }
}
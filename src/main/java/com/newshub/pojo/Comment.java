package com.newshub.pojo;

import java.util.Date;

public class Comment {
    private Integer commentid;

    private Integer newsid;

    private Date createTime;

    private Date updateTime;

    private String commentcontent;

    public Comment(Integer commentid, Integer newsid, Date createTime, Date updateTime, String commentcontent) {
        this.commentid = commentid;
        this.newsid = newsid;
        this.createTime = createTime;
        this.updateTime = updateTime;
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

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentcontent) {
        this.commentcontent = commentcontent == null ? null : commentcontent.trim();
    }
}
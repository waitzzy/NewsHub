package com.newshub.vo;

public class NewsTitleVo {

    private Integer newsid;

    private String newstitle;

    public Integer getNewsid() {
        return newsid;
    }

    public NewsTitleVo(Integer newsid, String newstitle) {
        this.newsid = newsid;
        this.newstitle = newstitle;
    }

    public NewsTitleVo(){
        super();
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle;
    }
}

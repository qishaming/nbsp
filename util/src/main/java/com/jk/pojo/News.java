package com.jk.pojo;

import javax.persistence.*;

/**
 * Created by Administrator on 2018/5/18.
 */
@Entity
@Table(name = "t_new")
public class News {
    @Id
    @Column(name = "newsid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer newsid;

    @Column(name = "title")
    private String title;

    @Column(name = "content")
    private String content;

    @Column(name = "newsdate")
    private String newsdate;

    @Column(name = "updatetime")
    private String updatetime;

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getNewsdate() {
        return newsdate;
    }

    public void setNewsdate(String newsdate) {
        this.newsdate = newsdate;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsid=" + newsid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", newsdate='" + newsdate + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }
}

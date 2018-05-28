package com.jk.action;

import com.jk.pojo.News;
import com.jk.service.NewsService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2018/5/18.
 */
@Namespace(value="/news")
@ParentPackage("basePackage")
public class NewAction extends  BaseAction{
    @Autowired
    private NewsService newsService;
    private News news =new News();
    private  Integer   newsid;

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }
    //CRUD
    @Action(value="/queryXin")
    public void queryXin(){
      List list=newsService.queryXin();

        super.writeJson(list);
    }
    @Action(value="/delXin")
    public void delXin(){
        newsService.delXin(newsid);
        super.writeJson("delAllSuccess");

    }



    @Action(value="/addXin")
    public void addXin(){
        newsService.addXin(news);
        super.writeJson("delAllSuccess");

    }

    @Action(value="/hxNew")
    public void hxNew(){
       News news= newsService.hxNew(newsid);

        super.writeJson(news);

    }

    @Action(value="/updateNew")
    public void updateNew(){
        newsService.updateNew(news);
        super.writeJson("success");

    }



}

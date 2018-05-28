package com.jk.service.impl;

import com.jk.dao.NewsDao;
import com.jk.pojo.News;
import com.jk.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/5/18.
 */
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsDao newsDao;


    public List<News> queryXin() {
            StringBuffer hql=new StringBuffer("from News order by updatetime desc");
            return newsDao.queryXin(hql);
        }

    public void delXin(Integer newsid) {
        String hql="delete from t_New where newsid="+newsid;
        newsDao.delXin(hql);
    }

    public void addXin(News news) {
        Date dd=new Date();
        SimpleDateFormat sim = new SimpleDateFormat("yyyy--MM--dd");
        String format = sim.format(dd);
        news.setNewsdate(format);
        news.setUpdatetime(format);
        newsDao.addXin(news);
    }

    public News hxNew(Integer newsid) {
        String hql="from News where newsid="+newsid;
        return  newsDao.hxNew(hql);
    }

    public void updateNew(News news) {
        Date dd=new Date();
        SimpleDateFormat sim = new SimpleDateFormat("yyyy--MM--dd");
        String format = sim.format(dd);
        news.setNewsdate(format);
        news.setUpdatetime(format);
        newsDao.updateNew(news);
    }
}

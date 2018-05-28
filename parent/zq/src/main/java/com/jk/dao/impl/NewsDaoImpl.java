package com.jk.dao.impl;


import com.jk.dao.NewsDao;
import com.jk.pojo.News;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/5/18.
 */
@Repository
public class NewsDaoImpl implements NewsDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void addXin(News news) {
        sessionFactory.getCurrentSession().saveOrUpdate(news);

    }

    public void delXin(String hql) {
        sessionFactory.getCurrentSession().createSQLQuery(hql).executeUpdate();

    }

    public List<News> queryXin(StringBuffer hql) {
        List<News>  list= sessionFactory.getCurrentSession().createQuery(hql.toString()).list();
        return list;
    }

    public News hxNew(String hql) {
       News uniqueResult = (News) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return uniqueResult;

    }

    public void updateNew(News news) {

        sessionFactory.getCurrentSession().saveOrUpdate(news);

    }
}

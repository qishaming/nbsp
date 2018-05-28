package com.jk.dao;

import com.jk.pojo.News;

import java.util.List;

/**
 * Created by Administrator on 2018/5/18.
 */
public interface NewsDao {
    void addXin(News news);

    void delXin(String hql);

    List<News> queryXin(StringBuffer hql);

    News hxNew(String hql);

    void updateNew(News news);

}

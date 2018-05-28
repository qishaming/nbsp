package com.jk.service;

import com.jk.pojo.News;

import java.util.List;

/**
 * Created by Administrator on 2018/5/18.
 */

public interface NewsService {
    List<News> queryXin();


    void delXin(Integer newsid);

    void addXin(News news);

    News hxNew(Integer newsid);

    void updateNew(News news);
}

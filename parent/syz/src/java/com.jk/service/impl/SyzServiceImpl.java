package com.jk.service.impl;

import com.jk.dao.SyzDao;
import com.jk.service.SyzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SyzServiceImpl implements SyzService{
    @Autowired
    private SyzDao syzDao;

    public List queryGoods() {
        StringBuffer hql = new StringBuffer();

        return syzDao.queryGoods();
    }
}

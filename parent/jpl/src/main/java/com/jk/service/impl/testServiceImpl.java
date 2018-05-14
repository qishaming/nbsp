package com.jk.service.impl;

import com.jk.dao.testDao;
import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;
import com.jk.service.testService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class testServiceImpl implements testService {

    @Autowired
    private testDao dao;


    @Override
    public List queryAll() {
        System.out.print("1111111111111111111111111111111111");
        return dao.queryAll();

    }

    @Override
    public List queryRepertory() {
        return dao.queryRepertory();
    }

    @Override
    public Repertory queryCountById(Integer repertoryId) {
        return dao.queryCountById(repertoryId);
    }

    @Override
    public void xiaJiaById(Goods goods) {
        dao.xiaJiaById(goods);
    }

    @Override
    public void shangJiaById(Goods g) {
        dao.shangJiaById(g);
    }

    @Override
    public void updatedRepertory(Repertory repertory) {
        dao.updatedRepertory(repertory);
    }


}

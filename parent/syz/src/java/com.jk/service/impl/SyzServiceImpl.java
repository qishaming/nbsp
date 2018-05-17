package com.jk.service.impl;

import com.jk.dao.SyzDao;
import com.jk.pojo.*;
import com.jk.service.SyzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SyzServiceImpl implements SyzService{
    @Autowired
    private SyzDao syzDao;


    public void addGoods(Goods goods) {
        syzDao.addGoods(goods);
    }

    public List queryBrand() {
        return syzDao.queryBrand();
    }


    public Goods hxGoods(Integer goodsid) {

        String hql="from Goods where goodsid="+goodsid;
        return syzDao.hxGoods(hql);

    }

    public void delGoods(Integer goodsid) {
        String hql=" delete from Goods where goodsid="+goodsid;
        syzDao.delGoods(hql);
    }

    public void addBrand(Brand brand) {
        syzDao.addBrand(brand);
    }

    public void addSize(GoodsSzie size) {
        syzDao.addSize(size);

    }

    public List<SmallType> querySmallType(Integer bigTypeid) {
        return syzDao.querySmallType(bigTypeid);
    }

    public List<BigType> queryBigType() {
        return  syzDao.queryBigType();
    }

    public List<GoodsSzie> querySize() {
        return  syzDao.querySize();
    }

    public List queryGoods(Integer merchantId) {
        return syzDao.queryGoods(merchantId);
    }


}

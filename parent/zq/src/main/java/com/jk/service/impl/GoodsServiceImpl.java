package com.jk.service.impl;



import com.jk.pojo.Brand;
import com.jk.pojo.Goods;
import com.jk.pojo.GoodsSzie;

import com.jk.pojo.Repertory;
import com.jk.service.GoodsService;
import com.jk.dao.GoodsDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/5/8.
 */
@Service
public class GoodsServiceImpl implements GoodsService {
  @Autowired
    private GoodsDao goodsDao;

    public List queryGoodss() {
        return goodsDao.queryGoodss();
    }

    public void delteGoods(Integer goodsid) {
        goodsDao.delteGoods(goodsid);
    }





    public List<Brand> queryBrand() {
        return goodsDao.queryBrand();
    }

    public List<GoodsSzie> queryGoodsSzie() {
        return goodsDao.queryGoodsSzie();
    }







    public void updateGoodsPinSuccess(Integer brandId) {
        String hql="update Brand set brandAuditState=1  where brandId="+brandId;
        goodsDao.updateGoodsPinSuccess(hql);
    }

    public void updateGoodsPinEree(Integer brandId) {
        String hql="update Brand set brandAuditState=2  where brandId="+brandId;
        goodsDao.updateGoodsPinEree(hql);
    }

    public void updateGoodsErrer(Integer goodsid) {
        String hql="update Goods set goodsAuditState=1  where goodsid="+goodsid;
        goodsDao.updateGoodsErrer(hql);
    }

    public void updateGoodsSuccess(Integer goodsid) {
        String hql="update Goods set goodsAuditState=3  where goodsid="+goodsid;
        goodsDao.updateGoodsSuccess(hql);
    }

    public void addRr(Repertory rr) {
        goodsDao.addRr(rr);
    }
}




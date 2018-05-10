package com.jk.dao.impl;

import com.jk.dao.SyzDao;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SyzDaoImpl implements SyzDao {
    @Autowired
    private SessionFactory SessionFactory;

    public List queryGoods() {
        String hql="select t1.goodsid as goodsid ,t1.goodsname as goodsname ,t1.goodsimg as goodsimg, t1.goodsPrice as goodsPrice,t1.goodsDiscounts as goodsDiscounts, t2.brandName as brandName,t3.goodsSizeName as goodsSizeName,t4.goodstypename as goodstypename from pyg_goods T1  ,pyg_brand T2,pyg_goodssize T3, pyg_goodstype T4 where t1.brandId=t2.brandId and    T1.sizeId=t3.goodsSizeId and t1.typeid=t4.goodstypeid";

        List list= SessionFactory.openSession().createSQLQuery(hql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list;
    }
}









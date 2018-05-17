package com.jk.dao.impl;

import com.jk.dao.SyzDao;
import com.jk.pojo.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.List;

@Repository
public class SyzDaoImpl implements SyzDao {
    @Autowired
    private SessionFactory SessionFactory;



    public void addGoods(Goods goods) {

        SessionFactory.getCurrentSession().saveOrUpdate(goods);
    }

    public List queryBrand() {


        List list= SessionFactory.getCurrentSession().createQuery("FROM Brand").list();
        return list;
    }


    public Goods hxGoods(String hql) {
        Goods  goodss = (Goods) SessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return goodss;
    }
    public void delGoods(String hql) {
        SessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void addBrand(Brand brand) {

        new SimpleDateFormat();
        SessionFactory.getCurrentSession().saveOrUpdate(brand);
    }

    public void addSize(GoodsSzie size) {
        SessionFactory.getCurrentSession().saveOrUpdate(size);
    }

    public List<BigType> queryBigType() {
        List list= SessionFactory.getCurrentSession().createQuery("FROM BigType").list();
        return list;
    }

    public List<SmallType> querySmallType(Integer bigTypeid) {
        String hql="SELECT t.smallTypeId as smallTypeId,t.smallTypeName as smallTypeName FROM pyg_smalltype t,pyg_bigtype d WHERE t.bigTypeId =d.bigTypeId AND t.bigTypeId="+bigTypeid;
        List list= SessionFactory.openSession().createSQLQuery(hql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();

        return list;
    }



    public List<GoodsSzie> querySize() {
        List list= SessionFactory.getCurrentSession().createQuery("FROM GoodsSzie").list();
        return list;
    }


    public List queryGoods(Integer merchantId) {
        String hql="SELECT T1.goodsid AS goodsid,T2.smallTypeName as smallTypeName,T3.bigTypeName as bigTypeName,T3.bigTypeId as bigTypeId,T1.goodsAuditState AS goodsAuditState,T1.goodsPrice AS goodsPrice,T1.goodsimg AS goodsimg,T1.goodsname AS goodsname,T1.sizeId AS sizeId,T1.goodsScript AS goodsScript,T4.brandName AS brandName ,T5.goodsSizeName AS goodsSizeName FROM pyg_goods T1,pyg_smalltype T2,pyg_bigtype T3,pyg_brand T4,pyg_goodssize T5 WHERE  T1.smallTypeId=T2.smallTypeId AND T2.bigTypeId=T3.bigTypeId AND T1.brandId=T4.brandId AND T1.sizeId=T5.goodsSizeId AND T1.merchantId="+merchantId;

        List list= SessionFactory.openSession().createSQLQuery(hql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list;
    }

}


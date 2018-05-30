package com.jk.dao.impl;

import com.jk.dao.GoodsDao;

import com.jk.pojo.*;

import org.hibernate.SessionBuilder;
import org.hibernate.SessionFactory;
import java.util.List;
import com.jk.pojo.Goods;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2018/5/8.
 */
@Repository
public class GoodsDaoImpl implements GoodsDao {

    @Autowired
    private SessionFactory sessionFactory;



    public List queryGoodss() {
        String hql="SELECT g.*,m. customerName  FROM pyg_goods g,pyg_merchant m WHERE  g.`merchantId`=m.`merchantId` AND g.`goodsAuditState` IN (2,3)";



        List list= sessionFactory.openSession().createSQLQuery(hql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list;
    }

    public void delteGoods(Integer goodsid) {

        String hql = "delete from  Goods where goodsid = "+goodsid;

        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updategoods(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateeergoods(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();

    }

    public void addGoods(Goods goods) {
        sessionFactory.getCurrentSession().saveOrUpdate(goods);

    }

    public List<Brand> queryBrand() {
        String hql="from Brand";
        List listb= sessionFactory.openSession().createQuery(hql.toString()).list();
        return  listb;
    }

    public List<GoodsSzie> queryGoodsSzie() {
        String hql="from GoodsSzie";
        List listgs= sessionFactory.openSession().createQuery(hql.toString()).list();
        return  listgs;
    }



    public void updateGoodsPinSuccess(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();


    }

    public void updateGoodsPinEree(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateGoodsErrer(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateGoodsSuccess(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();

    }

    public void addRr(Repertory rr) {
        sessionFactory.getCurrentSession().saveOrUpdate(rr);
    }


   /* public Goods hxGoods(String hql) {
        Goods uniqueResult = (Goods) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return uniqueResult;
    }

    public void updateGoodsType(String sql) {
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
    }



    public void deleteGoodsType(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }*/


}


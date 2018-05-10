package com.jk.dao.impl;

import com.jk.dao.GoodsDao;

import org.hibernate.SessionBuilder;
import org.hibernate.SessionFactory;
import java.util.List;

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

/*

    public List queryGoods() {
        String sql="select t1.goodsid as goodsid ,t1.goodsname as goodsname ,t2.ggname as ggname,t3.ppname as ppname,t4.typename as typename from t_goods T1 ,t_gg T2,t_pp T3, t_type T4 where t1.ggid=t2.ggid and t1.ppid=t3.ppid and  t1.typeid=t4.typeid ";
        List list= sessionFactory.openSession().createSQLQuery(sql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list;
    }

    public void delteGoods(Integer goodsid) {

        String hql = "delete from  Goods where goodsid = "+goodsid;

        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public List<Gg> queryGg() {
       StringBuffer hql =new StringBuffer("from Gg");
        List list= this.sessionFactory.openSession().createQuery(hql.toString()).list();
        return list;
    }

    public List<Type> queryType() {
        StringBuffer hql =new StringBuffer("from Type");
        List list= this.sessionFactory.openSession().createQuery(hql.toString()).list();
        return list;
    }

    public List<Pp> queryPp() {
        StringBuffer hql =new StringBuffer("from Pp");
        List list= this.sessionFactory.openSession().createQuery(hql.toString()).list();
        return list;
    }

    public Goods hxGoods(String hql) {
        Goods uniqueResult = (Goods) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return uniqueResult;
    }

    public void updateGoods(Goods goods) {
        this.sessionFactory.getCurrentSession().saveOrUpdate(goods);
    }

*/

}


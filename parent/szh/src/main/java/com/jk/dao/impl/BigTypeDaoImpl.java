package com.jk.dao.impl;

import com.jk.pojo.BigType;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import java.util.List;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jk.dao.BigTypeDao;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Repository
public class BigTypeDaoImpl implements BigTypeDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List queryBigType() {
        String hql="select * from pyg_bigtype ";
        SQLQuery query = sessionFactory.openSession().createSQLQuery(hql);

        List list = query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();

        System.out.println(list+"------------------------");
        return list;
    }

    @Override
    public void delteBigType(Integer bigTypeid) {
        String hql = "delete from pyg_bigtype where bigTypeId = "+bigTypeid;

        sessionFactory.getCurrentSession().createSQLQuery(hql).executeUpdate();
    }

    public void updategoods(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateeergoods(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void addBigType(BigType bigType) {
        sessionFactory.getCurrentSession().saveOrUpdate(bigType);
    }
}


package com.jk.dao.impl;

import com.jk.dao.MerchantDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
@Repository
public class MerchantDaoImpl implements MerchantDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List queryMerchant() {
        String hql="from  Merchant where merchantAuditState=0 ";
        List list= sessionFactory.openSession().createQuery(hql).list();
        return  list;
    }

    public void deleteMerchant(Integer merchantId) {
      String hql="delete from  Merchant where merchantId= "+merchantId;
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateSucces(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public void updateErre(String hql) {
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }






}

package com.jk.dao.impl;

import com.jk.dao.RegisterDao;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RegisterDaoImpl implements RegisterDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List queryRegister(Integer userid) {

        return sessionFactory.openSession().createQuery("from  Merchant   where userid="+userid).list();
    }

    @Override
    public void queryByName(User user) {
        StringBuffer sql=new StringBuffer(
                "UPDATE  user  u SET  u.`password`='"+user.getPassword()+"'  WHERE  u.`username`='"+ user.getUsername()+"'"
        );
        sessionFactory.openSession().createSQLQuery(sql.toString()).executeUpdate();

    }

    /*@Override
    public List queryByName(String name) {
        return sessionFactory.openSession().createQuery("from  User   where username='"+name+"'").list();
    }*/

    @Override
    public Merchant queryById(Integer merchantId) {
        Merchant merchant = sessionFactory.openSession().get(Merchant.class, merchantId);
        return  merchant;
    }

    @Override
    public void updateMerchant(Merchant merchant) {

        StringBuffer sql=new StringBuffer(
           "UPDATE  pyg_merchant  p SET " +
                   " p.`customerName`='"+merchant.getCustomerName()+"', " +
                   " p.merchantArea='"+merchant.getMerchantArea()+"', " +
                   " p.merchantMail='"+merchant.getMerchantMail()+"'," +
                   " p.merchantName='"+merchant.getMerchantName()+"'," +
                   " p.merchantPhone='"+merchant.getMerchantPhone()+"'," +
                   " p.merchantUpdateTime='"+merchant.getMerchantUpdateTime()+"'," +
                   " p.merchantAuditState='1'  WHERE  p.`merchantId`="+ merchant.getMerchantId()
        );
        sessionFactory.openSession().createSQLQuery(sql.toString()).executeUpdate();
       /* "UPDATE  pyg_merchant  p SET  p.`customerName`='"+merchant.getCustomerName()+"', p.merchantArea='"+merchant.getMerchantArea()+"' " +
                "  , p.merchantMail='"+merchant.getMerchantMail()+"'  ,p.=merchantName'"+merchant.getMerchantName()+"'  " +
                "  , p.merchantPhone='"+merchant.getMerchantPhone()+"' , p.=merchantUpdateTime'"+merchant.getMerchantUpdateTime()+"'" +
                "  , p.=merchantAuditState=1  WHERE p.`merchantId`="+ merchant.getMerchantId()*/

    }

    @Override
    public void shenghe(Integer merchantId) {
        StringBuffer sql=new StringBuffer(
                "UPDATE  pyg_merchant  p SET  p.`merchantAuditState`=0  WHERE p.`merchantId`="+merchantId
        );
        sessionFactory.openSession().createSQLQuery(sql.toString()).executeUpdate();
    }


}

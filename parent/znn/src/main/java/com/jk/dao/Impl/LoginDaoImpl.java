package com.jk.dao.Impl;

import com.jk.dao.LoginDao;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class LoginDaoImpl implements LoginDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User querylogin(String username) {
        User user =(User)sessionFactory.getCurrentSession().createQuery(" from  User  as u where u.username='" + username + "'").uniqueResult();
        return user;
    }


    @Override
    public void addzhuces(User user) {

        System.out.println(user+"++++++++++++++++++");
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public User queryMerchantIdByPhone(String phone) {

        String hql=" from User as u  where u.userphone ='"+phone+"'";

        User user =(User) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return user;
    }

    @Override
    public void addMerchant(Merchant merchant) {
        sessionFactory.getCurrentSession().saveOrUpdate(merchant);
    }

    @Override
    public void addzhuces1(User user) {
        System.out.println(user+"++++++++++++++++++2");
        sessionFactory.getCurrentSession().save(user);
    }
}

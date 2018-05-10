package com.jk.dao.Impl;

import com.jk.dao.LoginDao;
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
}

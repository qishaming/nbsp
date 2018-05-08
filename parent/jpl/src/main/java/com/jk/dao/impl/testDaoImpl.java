package com.jk.dao.impl;

import com.jk.dao.testDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public class testDaoImpl implements testDao {

    @Autowired
    private  SessionFactory sessionFactory;

    @Override
    public List queryAll() {
       StringBuffer hql=new StringBuffer(" from User");
       List list= this.sessionFactory.openSession().createQuery(hql.toString()).list();
        return list ;
    }
}

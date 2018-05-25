package com.jk.dao.impl;

import com.jk.dao.SmallTypeDao;
import com.jk.pojo.SmallType;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Repository
public class SmallTypeDaoImpl implements SmallTypeDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List querySmallType() {
        String hql="select s.smallTypeId,s.smallTypeName,s.bigTypeId,b.bigTypeName from pyg_smalltype s LEFT JOIN pyg_bigtype b on s.bigTypeId = b.bigTypeId ";
        SQLQuery query = sessionFactory.openSession().createSQLQuery(hql);

        List list = query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();

        System.out.println(list+"------------------------");
        return list;
    }

    @Override
    public void delteSmallType(Integer smallTypeid) {
        String hql = "delete from pyg_smalltype where smallTypeId = "+smallTypeid;

        sessionFactory.getCurrentSession().createSQLQuery(hql).executeUpdate();
    }


    public void addSmallType(SmallType smallType) {
        sessionFactory.getCurrentSession().saveOrUpdate(smallType);
    }
}


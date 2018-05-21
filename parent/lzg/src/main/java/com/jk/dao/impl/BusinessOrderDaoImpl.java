package com.jk.dao.impl;

import com.jk.dao.BusinessOrderDao;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * @project:nbsp
 * @PACKAGE_NAME:dao.impl
 * @description:Tooo
 * @Author:wanwt@senthink.com
 * @Creation Date:2018年05月10日18:12
 * @ModificationMistory who    when    what
 */

@Repository
public class BusinessOrderDaoImpl implements BusinessOrderDao {


    @Autowired
    private SessionFactory sessionFactory;

    public List queryBusinessOrder() {

        return sessionFactory.openSession().createQuery("from OrderForm").list();

    }

    //修改订单状态 点击发货，状态修改为2
    public void updateOrderState(Integer orderId) {
        StringBuffer sql = new StringBuffer(
                " UPDATE  6month.pyg_orderform  SET orderFormState = 2 WHERE orderFormId ="+orderId
        );
        sessionFactory.openSession().createSQLQuery(sql.toString()).executeUpdate();
    }

    //删除订单信息，byid
    public void delectOrderById(Integer orderId) {
        StringBuffer sql = new StringBuffer(
          "DELETE FROM 6month.pyg_orderform WHERE orderFormId="+orderId
        );
        sessionFactory.openSession().createSQLQuery(sql.toString()).executeUpdate();
    }
}

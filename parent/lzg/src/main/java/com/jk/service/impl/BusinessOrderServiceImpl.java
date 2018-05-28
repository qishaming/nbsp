package com.jk.service.impl;

import com.jk.dao.BusinessOrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jk.service.BusinessOrderService;

import java.util.List;

/**
 * @project:nbsp
 * @PACKAGE_NAME:service.impl
 * @description:Tooo
 * @Author:wanwt@senthink.com
 * @Creation Date:2018年05月10日18:07
 * @ModificationMistory who    when    what
 */
@Service
public class BusinessOrderServiceImpl implements BusinessOrderService{

    @Autowired
    private BusinessOrderDao businessOrderDao;

    public List queryBusinessOrder(Integer merchantId) {
        return businessOrderDao.queryBusinessOrder(merchantId);
    }

    //修改订单状态，点击发货状态由1-2
    public void updateOrderState(Integer orderId) {
         businessOrderDao.updateOrderState(orderId);
    }

    //删除订单信息byid
    public void delectOrderById(Integer orderId) {
        businessOrderDao.delectOrderById(orderId);
    }
}

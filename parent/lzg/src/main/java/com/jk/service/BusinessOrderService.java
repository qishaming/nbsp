package com.jk.service;

import java.util.List;

/**
 * @project:nbsp
 * @PACKAGE_NAME:service.serviceImpl
 * @description:Tooo
 * @Author:wanwt@senthink.com
 * @Creation Date:2018年05月10日17:45
 * @ModificationMistory who    when    what
 */
public interface BusinessOrderService {

    List queryBusinessOrder(Integer merchantId);

    void updateOrderState(Integer orderId);

    void delectOrderById(Integer orderId);
}

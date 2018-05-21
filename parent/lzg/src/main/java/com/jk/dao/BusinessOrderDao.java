package com.jk.dao;

import java.util.List;

/**
 * @project:nbsp
 * @PACKAGE_NAME:dao
 * @description:Tooo
 * @Author:wanwt@senthink.com
 * @Creation Date:2018年05月10日18:10
 * @ModificationMistory who    when    what
 */

public interface BusinessOrderDao {
    List queryBusinessOrder();

    void updateOrderState(Integer orderId);

    void delectOrderById(Integer orderId);
}

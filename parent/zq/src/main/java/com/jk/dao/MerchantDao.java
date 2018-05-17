package com.jk.dao;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
public interface MerchantDao {
    List queryMerchant();

    void deleteMerchant(Integer merchantId);

    void updateSucces(String hql);

    void updateErre(String hql);



}

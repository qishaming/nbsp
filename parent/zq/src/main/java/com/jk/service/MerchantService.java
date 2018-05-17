package com.jk.service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
public interface MerchantService {


    void updateSuccess(Integer merchantId);
    void updateErre(Integer merchantId);

    List queryMerchant();


    void deleteMerchant(Integer merchantId);


}

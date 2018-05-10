package com.jk.service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
public interface MerchantService {
    List queryMerchant();

    void deleteMerchant(Integer merchantId);

    void updateSuccess(Integer merchantId);

    void updateErre(Integer merchantId);
}

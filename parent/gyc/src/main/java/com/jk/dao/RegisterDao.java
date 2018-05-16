package com.jk.dao;

import com.jk.pojo.Merchant;

import java.util.List;

public interface RegisterDao {
    List queryRegister();


    Merchant queryById(Integer merchantId);

    void updateMerchant(Merchant merchant);

    void shenghe(Integer merchantId);
}

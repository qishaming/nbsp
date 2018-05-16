package com.jk.service;

import com.jk.pojo.Merchant;

import java.util.List;

public interface RegisterService {
    List queryRegister();

    Merchant queryById(Integer merchantId);

    void updateMerchant(Merchant merchant);

    void shenghe(Integer merchantId);
}

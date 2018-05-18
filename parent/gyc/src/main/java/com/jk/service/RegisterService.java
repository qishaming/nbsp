package com.jk.service;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;

import java.util.List;

public interface RegisterService {
    List queryRegister(Integer userid);

    Merchant queryById(Integer merchantId);

    void updateMerchant(Merchant merchant);

    void shenghe(Integer merchantId);

    void queryByName(User user);
}

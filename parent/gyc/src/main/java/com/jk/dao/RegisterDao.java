package com.jk.dao;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;

import java.util.List;

public interface RegisterDao {



    Merchant queryById(Integer merchantId);

    void updateMerchant(Merchant merchant);

    void shenghe(Integer merchantId);


    List queryRegister(Integer userid);


    void queryByName(User user);
}

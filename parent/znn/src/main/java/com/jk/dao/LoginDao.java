package com.jk.dao;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;

public interface LoginDao {

    User querylogin(String username);

    void addzhuces(User user);

    User  queryMerchantIdByPhone(String phone);

    void addMerchant(Merchant merchant);

    void addzhuces1(User user);

    Merchant queryMerchant(Integer userid);

}

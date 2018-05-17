package com.jk.dao;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;

public interface LoginDao {

    User querylogin(String username);

    Merchant queryMerchant(Integer userid);
}

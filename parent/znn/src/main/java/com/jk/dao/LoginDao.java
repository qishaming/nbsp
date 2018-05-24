package com.jk.dao;

import com.jk.pojo.GuangGao;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;

import java.util.List;

public interface LoginDao {

    User querylogin(String username);

    void addzhuces(User user);

    User  queryMerchantIdByPhone(String phone);

    void addMerchant(Merchant merchant);

    void addzhuces1(User user);

    Merchant queryMerchant(Integer userid);

    List queryGuangGao();

    void updateGuangGao(GuangGao guangGao);

    void deleteGuangGao(Integer gid);

    List queryMerchantName();

    void addGuangGao(GuangGao guangGao);

    GuangGao queryGuangGaoById(Integer gid);
}

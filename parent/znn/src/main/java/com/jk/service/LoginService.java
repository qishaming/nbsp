package com.jk.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;

public interface LoginService {

    Map<String,Object> login(String username, String password, String validataCode, String sessionCode);

    void addzhuces(String username, String password, String phone);

    User  queryMerchantIdByPhone(String phone);

    void addMerchant(Merchant merchant);

    void addzhuces1(String username, String password, String phone);
}

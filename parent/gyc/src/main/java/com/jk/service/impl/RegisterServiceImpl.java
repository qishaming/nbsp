package com.jk.service.impl;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import com.jk.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jk.dao.RegisterDao;

import java.util.List;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterDao dao;

    @Override
    public List queryRegister(Integer userid) {
        return dao.queryRegister(userid);
    }

    @Override
    public Merchant queryById(Integer merchantId) {
        return dao.queryById(merchantId);
    }

    @Override
    public void updateMerchant(Merchant merchant) {
        dao.updateMerchant(merchant);
    }

    @Override
    public void shenghe(Integer merchantId) {
        dao.shenghe(merchantId);
    }

    @Override
    public void queryByName(User user) {
        dao.queryByName(user);
    }


}

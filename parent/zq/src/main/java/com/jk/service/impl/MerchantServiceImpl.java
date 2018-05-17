package com.jk.service.impl;

import com.jk.dao.MerchantDao;
import com.jk.service.MerchantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
@Service
public class MerchantServiceImpl implements MerchantService {
    @Autowired
    private MerchantDao merchantDao;

    public List queryMerchant() {
        return merchantDao.queryMerchant();
    }

    public void deleteMerchant(Integer merchantId) {
        merchantDao.deleteMerchant(merchantId);
    }

    public void updateSuccess(Integer merchantId) {
        String hql="update Merchant set merchantAuditState=2 where merchantId="+merchantId;
        merchantDao.updateSucces(hql);
    }


    public void updateErre(Integer merchantId) {
        String hql="update Merchant set merchantAuditState=1 where merchantId="+merchantId;
        merchantDao.updateErre(hql);
    }





}

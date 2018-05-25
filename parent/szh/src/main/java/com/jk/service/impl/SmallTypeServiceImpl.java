package com.jk.service.impl;


import com.jk.dao.SmallTypeDao;
import com.jk.pojo.SmallType;
import com.jk.service.SmallTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Service
public class SmallTypeServiceImpl implements SmallTypeService {

    @Autowired
    private SmallTypeDao smallTypeDao;

    @Override
    public List querySmallType() {
        return smallTypeDao.querySmallType();
    }

    @Override
    public void addSmallType(SmallType bigType) {
        smallTypeDao.addSmallType(bigType);
    }

    @Override
    public void updateSmallType(SmallType bigType) {

    }

    @Override
    public void deleteSmallType(Integer id) {
        smallTypeDao.delteSmallType(id);

    }

    public void delteGoods(Integer goodsid) {
        smallTypeDao.delteSmallType(goodsid);
    }

}

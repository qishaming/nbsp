package com.jk.service.impl;


import com.jk.dao.BigTypeDao;
import com.jk.pojo.BigType;
import com.jk.service.BigTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Service
public class BigTypeServiceImpl implements BigTypeService {

    @Autowired
    private BigTypeDao bigTypeDao;

    @Override
    public List queryBigType() {
        return bigTypeDao.queryBigType();
    }

    @Override
    public void addBigType(BigType bigType) {
        bigTypeDao.addBigType(bigType);
    }

    @Override
    public void updateBigType(BigType bigType) {

    }

    @Override
    public void deleteBigType(Integer id) {
        bigTypeDao.delteBigType(id);

    }

    public void delteGoods(Integer goodsid) {
        bigTypeDao.delteBigType(goodsid);
    }

}

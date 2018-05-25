package com.jk.service;


import com.jk.pojo.BigType;
import com.jk.pojo.Brand;
import com.jk.pojo.GoodsSzie;
import com.jk.pojo.Repertory;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface BigTypeService {

    java.util.List queryBigType();

    void  addBigType(BigType bigType);

    void updateBigType(BigType bigType);

    void  deleteBigType(Integer id);

}

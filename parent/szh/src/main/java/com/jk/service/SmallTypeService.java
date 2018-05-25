package com.jk.service;


import com.jk.pojo.SmallType;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface SmallTypeService {

    java.util.List querySmallType();

    void  addSmallType(SmallType smallType);

    void updateSmallType(SmallType smallType);

    void  deleteSmallType(Integer id);

}

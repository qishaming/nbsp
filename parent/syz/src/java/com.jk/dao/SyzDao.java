package com.jk.dao;

import com.jk.pojo.*;

import java.util.List;

public interface SyzDao {
    void addGoods(Goods goods);

    List queryBrand();


    Goods hxGoods(String hql);

    void delGoods(String hql);

    void addBrand(Brand brand);

    void addSize(GoodsSzie size);

    List<SmallType> querySmallType(Integer bigTypeid);

    List<BigType> queryBigType();

    List<GoodsSzie> querySize();

    List queryGoods(Integer merchantId);

    void submitgoods(Integer goodsid);
}

package com.jk.service;
import com.jk.pojo.*;

import java.util.List;

public interface SyzService {


    void addGoods(Goods goods);

    List queryBrand();


    Goods hxGoods(Integer goodsid);

    void delGoods(Integer goodsid);

    void addBrand(Brand brand);

    void addSize(GoodsSzie size);

    List<SmallType> querySmallType(Integer bigTypeid);

    List<BigType> queryBigType();

    List<GoodsSzie> querySize();

    List queryGoods(Integer merchantId);

    void submitgoods(Integer goodsid);
}

package com.jk.service;


import com.jk.pojo.Brand;
import com.jk.pojo.Goods;
import com.jk.pojo.GoodsSzie;

import com.jk.pojo.Repertory;
import org.hibernate.mapping.List;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface GoodsService {
    java.util.List queryGoodss();




    java.util.List<Brand> queryBrand();

    java.util.List<GoodsSzie> queryGoodsSzie();




    java.util.List queryGoodsPin();



    void updateGoodsPinSuccess(Integer brandId);

    void updateGoodsPinEree(Integer brandId);

    void updateGoodsErrer(Integer goodsid);

    void updateGoodsSuccess(Integer goodsid);

    void addRr(Repertory rr);


}

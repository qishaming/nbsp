package com.jk.dao;




import com.jk.pojo.Brand;
import com.jk.pojo.Goods;
import com.jk.pojo.GoodsSzie;
import com.jk.pojo.Repertory;


import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface GoodsDao {



  List queryGoodss();

    void delteGoods(Integer goodsid);



  List<Brand> queryBrand();

  List<GoodsSzie> queryGoodsSzie();






  void updateGoodsPinSuccess(String hql);

  void updateGoodsPinEree(String hql);

  void updateGoodsErrer(String hql);

  void updateGoodsSuccess(String hql);

  void addRr(Repertory rr);





    /*  List<Gg> queryGg();

    List<Type> queryType();

    List<Pp> queryPp();

    Goods hxGoods(updategoods);*/
}

package com.jk.action;



import com.jk.pojo.Type;
import com.jk.service.GoodsService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Namespace(value="/goods")
@ParentPackage("struts-default")
public class GoodsAction extends BaseAction {
/*   @Autowired
    private GoodsService goodsService;
    private Goods goods=new Goods();
     private  Integer goodsid;
    private Gg gg=new Gg();
    private Pp pp=new Pp();
    private Type ty=new Type();
    private List list;
    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Gg getGg() {
        return gg;
    }

    public void setGg(Gg gg) {
        this.gg = gg;
    }

    public Pp getPp() {
        return pp;
    }

    public void setPp(Pp pp) {
        this.pp = pp;
    }

    public Type getTy() {
        return ty;
    }

    public void setTy(Type ty) {
        this.ty = ty;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

//查商品
    @Action(value="/queryGoods")

   public void  queryGoods(){
      list= goodsService.queryGoods();

        super.writeJson(list);

    }
//删商品
    @Action(value="/delteGoods")

    public void  delteGoods(){
        goodsService.delteGoods(goodsid);

        super.writeJson("delsuccess");

    }
//查小表
@Action(value="/queryGg")

public void  queryGg(){
  List<Gg> listgg =goodsService.queryGg();

    super.writeJson(listgg);

}
    @Action(value="/queryType")
    public void  queryType(){
        List<Type> listtype =goodsService.queryType();

        super.writeJson(listtype);

    }
    @Action(value="/queryPp")
    public void  queryPp(){
        List<Pp> listpp =goodsService.queryPp();

        super.writeJson(listpp);

    }
    //回显
    @Action(value="/hxGoods")
    public void hxGoods(){
        Goods goods=goodsService.hxGoods(goodsid);
        super.writeJson(goods);


    }
    @Action(value="/updateGoods")
    public void updateGoods(){
       goodsService.updateGoods(goods);
        super.writeJson("success");


    }*/
}

package com.jk.action;

import com.jk.pojo.Merchant;
import com.jk.service.MerchantService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
@Namespace(value="/goods")
@ParentPackage("struts-default")
public class MerchantAction extends  BaseAction{
    @Autowired
    private MerchantService merchantservice;
    private Merchant me=new Merchant();
    private Integer   merchantId;
    private Integer brandId;
    private Integer goodsSizeId;

    public Integer getGoodsSizeId() {
        return goodsSizeId;
    }

    public void setGoodsSizeId(Integer goodsSizeId) {
        this.goodsSizeId = goodsSizeId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Merchant getMe() {
        return me;
    }

    public void setMe(Merchant me) {
        this.me = me;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }


    //查商家
    @Action(value="/queryMerchant")

    public void  queryMerchant(){
        List list= merchantservice.queryMerchant();

        super.writeJson(list);

    }
    //删除商家
    @Action(value="/delteMerchant")

    public void  deleteMerchant(){
        merchantservice.deleteMerchant(merchantId);

        super.writeJson("delsuccess");

    }
    //审核状态
    @Action(value="/updateSuccess")
    public void  updateSuccess(){
        merchantservice.updateSuccess(merchantId);

        super.writeJson("updategoods");

    }
    @Action(value="/updateErre")
    public void  updateErre() {
        merchantservice.updateErre(merchantId);

        super.writeJson("updategoods");

    }





    }






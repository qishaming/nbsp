package com.jk.action;




import com.jk.pojo.*;
import com.jk.service.GoodsService;


import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
@Namespace(value="/goods")
@ParentPackage("struts-default")
public class GoodsAction extends BaseAction {
  @Autowired
    private GoodsService goodsService;
    private Goods goods=new Goods();
    private Brand br=new Brand();
    private GoodsSzie gz=new GoodsSzie();
    private  Integer goodsid;
    private String uploadFileFileName;
    private File uploadFile;
    private Merchant me=new Merchant();
    private Integer      goodstypeid;
    private Integer      brandAuditState;
    private Integer  brandId;
    private Repertory rr=new Repertory();

    public Repertory getRr() {
        return rr;
    }

    public void setRr(Repertory rr) {
        this.rr = rr;
    }

    public Integer getGoodstypeid() {
        return goodstypeid;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public void setGoodstypeid(Integer goodstypeid) {
        this.goodstypeid = goodstypeid;
    }

    public Goods getGoods() {
        return goods;
    }

    public Merchant getMe() {
        return me;
    }

    public void setMe(Merchant me) {
        this.me = me;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Brand getBr() {
        return br;
    }

    public void setBr(Brand br) {
        this.br = br;
    }

    public GoodsSzie getGz() {
        return gz;
    }

    public void setGz(GoodsSzie gz) {
        this.gz = gz;
    }



    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public Integer getBrandAuditState() {
        return brandAuditState;
    }

    public void setBrandAuditState(Integer brandAuditState) {
        this.brandAuditState = brandAuditState;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    //查商家商品品牌规格表
    @Action(value="/queryGoodss")
   public void  queryGoodss(){
     List list= goodsService.queryGoodss();

        super.writeJson(list);

    }
//驳回状态1
    @Action(value="/updateGoodsErrer")
    public void  updateGoodsErrer(){
       goodsService.updateGoodsErrer(goodsid);

        super.writeJson("success");

    }
    //修改品牌状态3 新增
    @Action(value="/updateGoodsSuccess")
    public void  updateGoodsSuccess(){
        goodsService.updateGoodsSuccess(goodsid);
        Date dd=new Date();
        SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
        String format = sim.format(dd);
        rr.setRepertoryUpdateTime(format);
      Integer a=goodsid;
        Integer b=0;
        rr.setGoodsId(a);
   rr.setRepertoryNumber(b);
        goodsService.addRr(rr);
        super.writeJson("success");

    }





//商品品牌修改状态 ru
    @Action(value="/queryGoodsPin")

    public void  queryGoodsPin(){
        List listgp= goodsService.queryGoodsPin();

        super.writeJson(listgp);


    }

    @Action(value="/updateGoodsPinSuccess")

    public void  updateGoodsPinSuccess(){
        goodsService.updateGoodsPinSuccess(brandId);

        super.writeJson("success");


    }
    @Action(value="/updateGoodsPinEree")

    public void  updateGoodsPinEree(){
      goodsService.updateGoodsPinEree(brandId);

        super.writeJson("success");


    }

















}




package com.jk.action;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import com.jk.service.RegisterService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Namespace("/gyc")
@ParentPackage("basePackage")
public class GycAction extends BaseAction {
      @Autowired
      private RegisterService service;
    private Integer merchantId;
    private Merchant merchant;

    public String getMima() {
        return mima;
    }
    public void setMima(String mima) {
        this.mima = mima;
    }
    private String mima;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private User user;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private  String name;
   //查询商家的基本信息
    @Action(value = "queryRegister")
      public void queryRegister(){
        Merchant merchant = (Merchant) ServletActionContext.getRequest().getSession().getAttribute("merchant");
        List list=service.queryRegister(merchant.getUserid());
          super.writeJson(list);
      }
        //修改的回显
    @Action(value = "queryById")
      public void queryById(){
        System.out.print("merchantId");
       Merchant mer=service.queryById(merchantId);
       super.writeJson(mer);
      }


    @Action(value = "queryByName")
    public void queryByName(){
        System.out.print("aaaaaaaaaaaaaaaaaaaaaaa"+name);
        User users = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
        String mima="";
        if(users.getUsername().equals(user.getUsername())){
            service.queryByName(user);
            mima="aa";
        }else {
            mima="bb";
        }
        super.writeJson(mima);
    }
   //提交运营商审核
    @Action(value = "shenghe")
    public void shenghe(){
          String aa="";
          try {
              service.shenghe( merchantId);
              aa="succes";
          }catch (Exception e){
              aa="false";
              e.printStackTrace();
          }
        super.writeJson(aa);
    }
    //修改商家信息
    @Action(value = "updateMerchant")
    public void updateMerchant(){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(date);
        merchant.setMerchantUpdateTime(format);
         String ss="";
            if(merchant.getMerchantAuditState()==2){
                service.updateMerchant(merchant);
                ss="2";
            }else{
                ss="0";
            }
        super.writeJson(ss);
    }
    //




    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Merchant getMerchant() {
        return merchant;
    }

    public void setMerchant(Merchant merchant) {
        this.merchant = merchant;
    }


}

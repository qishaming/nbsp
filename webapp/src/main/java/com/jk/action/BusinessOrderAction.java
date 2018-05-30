package com.jk.action;

import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import com.jk.service.BusinessOrderService;

import java.util.List;

/**
 * @project:nbsp
 * @PACKAGE_NAME:com.jk.action
 * @description:继承了BaseAction的父类
 * @Author:wanwt@senthink.com
 * @Creation Date:2018年05月10日15:59
 * @ModificationMistory who    when    what
 */
    @Namespace(value = "/businessOrderAction")
    @ParentPackage("basePackage")
public class BusinessOrderAction extends BaseAction {

    @Autowired
    private BusinessOrderService businessOrderService;

    /**
     *查询所有订单信息的页面
     */
    @Action(value ="queryBusinessOrder")
    public void queryBusinessOrder(){
        System.err.print("已经进入订单管理后台action");
       Merchant merchant= (Merchant) ServletActionContext.getRequest().getSession().getAttribute("merchant");

        List list = businessOrderService.queryBusinessOrder(merchant.getMerchantId());
        System.out.println("开始进入super返回前台"+merchant.getMerchantId());
        super.writeJson(list);
    }


    private String  s ;

    public String getS() {
        return s;
    }

    public void setS(String s) {
        this.s = s;
    }


    private Integer orderId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }


    /**
     *修改订单状态之商家点击发货
     */
    @Action(value ="updateOrderState")
    public void updateOrderState(){
        System.err.print("已经进入updateOrderState");
        try {
            businessOrderService.updateOrderState(orderId);
            s="1";
        }catch (Exception e){
            e.printStackTrace();
            s="2";
        }

        System.err.print("updateOrderState已开始返回");
        super.writeJson(s);
    }

    /**
     *删除订单信息
     */
    @Action(value ="delectOrderById")
    public void delectOrderById(){
        System.err.print("delectOrderById");
        try {
            businessOrderService.delectOrderById(orderId);
            s="success";
        }catch (Exception e){
            e.printStackTrace();
            s="error";
        }
        super.writeJson(s);
    }





    /**
     * 进入跳转订单页面的后台action,暂时没有用到 项目开发第三天
     * @return
     */
    @Action(value = "jumpToBusinessOrder"
        ,results = { @Result(name="businessOrder",location = "/businessOrder.jsp")})
    public  String jumpToBusinessOrder(){
        System.err.print("进入跳转订单页面的后台action");
        return "businessOrder";
    }








}

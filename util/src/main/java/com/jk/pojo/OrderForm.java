package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_orderForm")
public class OrderForm {
    /*@Id
    @Column(name = "orderFormId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer orderFormId;
    @Column(name = "merchantUpdateTime")
    private String merchantUpdateTime;
    @Column(name = "customerId")
    private Integer customerId;
    @Column(name = "merchantId")
    private Integer merchantId;*/
    @Id
    @Column(name = "orderFormId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String orderFormId;
    @Column(name = "customerCount")
    private Integer customerCount;
    @Column(name = "orderFormTotalPrice")
    private Double orderFormTotalPrice;
    @Column(name = "orderRegisterTime")
    private String orderRegisterTime;
    @Column(name = "orderUpdateTime")
    private String orderUpdateTime;
    @Column(name = "customerId")
    private Integer customerId;
    @Column(name = "merchantId")
    private Integer merchantId;
    @Column(name = "goodsid")
    private Integer goodsid;

    public String getOrderFormId() {
        return orderFormId;
    }

    public void setOrderFormId(String orderFormId) {
        this.orderFormId = orderFormId;
    }

    public Integer getCustomerCount() {
        return customerCount;
    }

    public void setCustomerCount(Integer customerCount) {
        this.customerCount = customerCount;
    }

    public Double getOrderFormTotalPrice() {
        return orderFormTotalPrice;
    }

    public void setOrderFormTotalPrice(Double orderFormTotalPrice) {
        this.orderFormTotalPrice = orderFormTotalPrice;
    }

    public String getOrderRegisterTime() {
        return orderRegisterTime;
    }

    public void setOrderRegisterTime(String orderRegisterTime) {
        this.orderRegisterTime = orderRegisterTime;
    }

    public String getOrderUpdateTime() {
        return orderUpdateTime;
    }

    public void setOrderUpdateTime(String orderUpdateTime) {
        this.orderUpdateTime = orderUpdateTime;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    @Override
    public String toString() {
        return "OrderForm{" +
                "orderFormId='" + orderFormId + '\'' +
                ", customerCount=" + customerCount +
                ", orderFormTotalPrice=" + orderFormTotalPrice +
                ", orderRegisterTime='" + orderRegisterTime + '\'' +
                ", orderUpdateTime='" + orderUpdateTime + '\'' +
                ", customerId=" + customerId +
                ", merchantId=" + merchantId +
                ", goodsid=" + goodsid +
                '}';
    }
}

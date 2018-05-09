package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_merchant")
public class Merchant {
    @Id
    @Column(name = "merchantId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer merchantId;
    @Column(name = "customerName")
    private String customerName;
    @Column(name = "merchantArea")
    private String merchantArea;
    @Column(name = "merchantRegisterTime")
    private String merchantRegisterTime;
    @Column(name = "merchantUpdateTime")
    private String merchantUpdateTime;
    @Column(name = "merchantPhone")
    private String merchantPhone;
    @Column(name = "merchantName")
    private String merchantName;
    @Column(name = "merchantMail")
    private String merchantMail;

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getMerchantArea() {
        return merchantArea;
    }

    public void setMerchantArea(String merchantArea) {
        this.merchantArea = merchantArea;
    }

    public String getMerchantRegisterTime() {
        return merchantRegisterTime;
    }

    public void setMerchantRegisterTime(String merchantRegisterTime) {
        this.merchantRegisterTime = merchantRegisterTime;
    }

    public String getMerchantUpdateTime() {
        return merchantUpdateTime;
    }

    public void setMerchantUpdateTime(String merchantUpdateTime) {
        this.merchantUpdateTime = merchantUpdateTime;
    }

    public String getMerchantPhone() {
        return merchantPhone;
    }

    public void setMerchantPhone(String merchantPhone) {
        this.merchantPhone = merchantPhone;
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName;
    }

    public String getMerchantMail() {
        return merchantMail;
    }

    public void setMerchantMail(String merchantMail) {
        this.merchantMail = merchantMail;
    }

    @Override
    public String toString() {
        return "Merchant{" +
                "merchantId=" + merchantId +
                ", customerName='" + customerName + '\'' +
                ", merchantArea='" + merchantArea + '\'' +
                ", merchantRegisterTime='" + merchantRegisterTime + '\'' +
                ", merchantUpdateTime='" + merchantUpdateTime + '\'' +
                ", merchantPhone=" + merchantPhone +
                ", merchantName=" + merchantName +
                ", merchantMail=" + merchantMail +
                '}';
    }
}

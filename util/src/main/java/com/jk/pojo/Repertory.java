package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_repertory")
public class Repertory {
    @Id
    @Column(name = "orderFormId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer orderFormId;
    @Column(name = "merchantUpdateTime")
    private String merchantUpdateTime;
    @Column(name = "customerId")
    private Integer customerId;
    @Column(name = "merchantId")
    private Integer merchantId;

    public Integer getOrderFormId() {
        return orderFormId;
    }

    public void setOrderFormId(Integer orderFormId) {
        this.orderFormId = orderFormId;
    }

    public String getMerchantUpdateTime() {
        return merchantUpdateTime;
    }

    public void setMerchantUpdateTime(String merchantUpdateTime) {
        this.merchantUpdateTime = merchantUpdateTime;
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

    @Override
    public String toString() {
        return "Repertory{" +
                "orderFormId=" + orderFormId +
                ", merchantUpdateTime='" + merchantUpdateTime + '\'' +
                ", customerId=" + customerId +
                ", merchantId=" + merchantId +
                '}';
    }
}

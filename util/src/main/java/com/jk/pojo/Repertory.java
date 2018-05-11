package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_repertory")
public class Repertory {
    @Id
    @Column(name = "repertoryId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer repertoryId;
    @Column(name = "repertoryUpdateTime")
    private String repertoryUpdateTime;
    @Column(name = "merchantId")
    private Integer merchantId;
    @Column(name = "goodsid")
    private Integer goodsid;
    @Column(name = "repertoryNumber")
    private Integer repertoryNumber;

    public Integer getRepertoryId() {
        return repertoryId;
    }

    public void setRepertoryId(Integer repertoryId) {
        this.repertoryId = repertoryId;
    }

    public String getRepertoryUpdateTime() {
        return repertoryUpdateTime;
    }

    public void setRepertoryUpdateTime(String repertoryUpdateTime) {
        this.repertoryUpdateTime = repertoryUpdateTime;
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

    public Integer getRepertoryNumber() {
        return repertoryNumber;
    }

    public void setRepertoryNumber(Integer repertoryNumber) {
        this.repertoryNumber = repertoryNumber;
    }

    @Override
    public String toString() {
        return "Repertory{" +
                "repertoryId=" + repertoryId +
                ", repertoryUpdateTime='" + repertoryUpdateTime + '\'' +
                ", merchantId=" + merchantId +
                ", goodsid=" + goodsid +
                ", repertoryNumber=" + repertoryNumber +
                '}';
    }
}

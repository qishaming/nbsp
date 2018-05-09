package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_goodsSize")
public class GoodsSzie {

    @Id
    @Column(name = "goodsSizeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer goodsSizeId;

    @Column(name = "goodsSizeName")
    private String goodsSizeName;

    @Column(name = "sizeAuditState")
    private Integer sizeAuditState;

    public Integer getSizeAuditState() {
        return sizeAuditState;
    }

    @Override
    public String toString() {
        return "GoodsSzie{" +
                "goodsSizeId=" + goodsSizeId +
                ", goodsSizeName='" + goodsSizeName + '\'' +
                ", sizeAuditState=" + sizeAuditState +
                '}';
    }

    public void setSizeAuditState(Integer sizeAuditState) {
        this.sizeAuditState = sizeAuditState;
    }

    public Integer getGoodsSizeId() {
        return goodsSizeId;
    }

    public void setGoodsSizeId(Integer goodsSizeId) {
        this.goodsSizeId = goodsSizeId;
    }

    public String getGoodsSizeName() {
        return goodsSizeName;
    }

    public void setGoodsSizeName(String goodsSizeName) {
        this.goodsSizeName = goodsSizeName;
    }
}

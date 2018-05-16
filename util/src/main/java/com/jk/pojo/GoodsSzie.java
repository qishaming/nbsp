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

    @Column(name = "smallTypeId")
    private Integer smallTypeId;

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

    public Integer getSmallTypeId() {
        return smallTypeId;
    }

    public void setSmallTypeId(Integer smallTypeId) {
        this.smallTypeId = smallTypeId;
    }

    @Override
    public String toString() {
        return "GoodsSzie{" +
                "goodsSizeId=" + goodsSizeId +
                ", goodsSizeName='" + goodsSizeName + '\'' +
                ", smallTypeId=" + smallTypeId +
                '}';
    }
}

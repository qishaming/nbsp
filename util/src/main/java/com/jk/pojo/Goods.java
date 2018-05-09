package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_goods")
public class Goods {

    @Id
    @Column(name = "goodsid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer id;

    @Column(name = "goodsname")
    private String goodsname;

    @Column(name = "typeid")
    private Integer typeid;

    @Column(name = "brandId")
    private Integer brandId;

    @Column(name = "sizeId")
    private Integer sizeId;

    @Column(name = "goodsimg")
    private String goodsimg;

    @Column(name = "goodsPrice")
    private String goodsPrice;

    @Column(name = "goodsDiscounts")
    private String goodsDiscounts;


    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodsname='" + goodsname + '\'' +
                ", typeid=" + typeid +
                ", brandId=" + brandId +
                ", sizeId=" + sizeId +
                ", goodsimg='" + goodsimg + '\'' +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsDiscounts='" + goodsDiscounts + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public String getGoodsimg() {
        return goodsimg;
    }

    public void setGoodsimg(String goodsimg) {
        this.goodsimg = goodsimg;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsDiscounts() {
        return goodsDiscounts;
    }

    public void setGoodsDiscounts(String goodsDiscounts) {
        this.goodsDiscounts = goodsDiscounts;
    }
}

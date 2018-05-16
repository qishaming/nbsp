package com.jk.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "pyg_goods")
public class Goods{

    @Id
    @Column(name = "goodsId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer goodsId;//主键

    @Column(name = "goodsName")
    private String goodsName;//商品名称

    @Column(name = "brandId")
    private Integer brandId;

    @Column(name = "sizeIds")
    private String sizeIds;//一种商品对应多种规格  id

    @Column(name = "goodsImg")
    private String goodsImg;

    @Column(name = "goodsPrice")
    private String goodsPrice;

    @Column(name = "goodsDiscounts")
    private String goodsDiscounts;

    @Column(name = "goodsAuditState")
    private Integer goodsAuditState;

    @Column(name = "goodsScript")
    private String goodsScript;
    @Column(name = "merchantId")
    private Integer merchantId;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
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

    public Integer getGoodsAuditState() {
        return goodsAuditState;
    }

    public void setGoodsAuditState(Integer goodsAuditState) {
        this.goodsAuditState = goodsAuditState;
    }

    public String getGoodsScript() {
        return goodsScript;
    }

    public void setGoodsScript(String goodsScript) {
        this.goodsScript = goodsScript;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public String getSizeIds() {
        return sizeIds;
    }

    public void setSizeIds(String sizeIds) {
        this.sizeIds = sizeIds;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", goodsName='" + goodsName + '\'' +
                ", brandIds=" + brandId +
                ", sizeId=" + sizeIds +
                ", goodsImg='" + goodsImg + '\'' +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsDiscounts='" + goodsDiscounts + '\'' +
                ", goodsAuditState=" + goodsAuditState +
                ", goodsScript='" + goodsScript + '\'' +
                ", merchantId=" + merchantId +
                '}';
    }
}

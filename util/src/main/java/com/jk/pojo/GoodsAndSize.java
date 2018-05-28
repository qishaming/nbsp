package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_goods_size")
public class GoodsAndSize {

    @Id
    @Column(name = "gsId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer gsId;//主键

    @Column(name = "goodsId")
    private Integer goodsId;//商品id

    @Column(name = "sizeId")
    private Integer sizeId;//规格id

    public Integer getGsId() {
        return gsId;
    }

    public void setGsId(Integer gsId) {
        this.gsId = gsId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    @Override
    public String toString() {
        return "GoodsAndSize{" +
                "gsId=" + gsId +
                ", goodsId=" + goodsId +
                ", sizeId=" + sizeId +
                '}';
    }
}

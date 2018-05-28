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
}

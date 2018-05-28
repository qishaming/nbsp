package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_size")
public class GoodsSize {
    @Id
    @Column(name = "sizeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer sizeId;//主键

    @Column(name = "sizeName")
    private String sizeName;//规格名称

    @Column(name = "size")
    private String size;//规格值

    @Column(name = "smallTypeId")
    private Integer smallTypeId;//规格


}

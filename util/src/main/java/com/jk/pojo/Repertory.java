package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_repertory")
public class Repertory{
    @Id
    @Column(name = "repertoryId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer repertoryId;
    @Column(name = "repertoryUpdateTime")
    private String repertoryUpdateTime;
    @Column(name = "goodsId")
    private Integer goodsId;
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

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
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
                ", goodsId=" + goodsId +
                ", repertoryNumber=" + repertoryNumber +
                '}';
    }
}

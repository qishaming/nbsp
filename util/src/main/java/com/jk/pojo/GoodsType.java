package com.jk.pojo;


import javax.persistence.*;

@Entity
@Table(name = "pyg_goodsType")
public class GoodsType {

    @Id
    @Column(name = "goodstypeid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer goodstypeid;

    @Column(name = "goodstypename")
    private String goodstypename;

    @Column(name = "goodsTypeAuditState")
    private Integer goodsTypeAuditState;

    @Override
    public String toString() {
        return "GoodsType{" +
                "goodstypeid=" + goodstypeid +
                ", goodstypename='" + goodstypename + '\'' +
                ", goodsTypeAuditState=" + goodsTypeAuditState +
                '}';
    }

    public Integer getGoodsTypeAuditState() {
        return goodsTypeAuditState;
    }

    public void setGoodsTypeAuditState(Integer goodsTypeAuditState) {
        this.goodsTypeAuditState = goodsTypeAuditState;
    }

    public Integer getGoodstypeid() {
        return goodstypeid;
    }

    public void setGoodstypeid(Integer goodstypeid) {
        this.goodstypeid = goodstypeid;
    }

    public String getGoodstypename() {
        return goodstypename;
    }

    public void setGoodstypename(String goodstypename) {
        this.goodstypename = goodstypename;
    }
}

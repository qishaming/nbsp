package com.jk.pojo;


import javax.persistence.*;

@Entity
@Table(name = "pyg_brand")
public class Brand {

    @Id
    @Column(name = "brandId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer brandId;

    @Column(name = "brandName")
    private String brandName;

    @Column(name = "brandAuditState")
    private Integer brandAuditState;

    @Override
    public String toString() {
        return "Brand{" +
                "brandId=" + brandId +
                ", brandName='" + brandName + '\'' +
                ", brandAuditState=" + brandAuditState +
                '}';
    }

    public Integer getBrandAuditState() {
        return brandAuditState;
    }

    public void setBrandAuditState(Integer brandAuditState) {
        this.brandAuditState = brandAuditState;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }
}

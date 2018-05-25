package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_bigtype")
public class BigType {

    @Id
    @Column(name = "bigTypeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer bigTypeId;//主键

    @Column(name = "bigTypeName")
    private String bigTypeName;//大类名称

    public Integer getBigTypeId() {
        return bigTypeId;
    }

    public void setBigTypeId(Integer bigTypeId) {
        this.bigTypeId = bigTypeId;
    }

    public String getBigTypeName() {
        return bigTypeName;
    }

    public void setBigTypeName(String bigTypeName) {
        this.bigTypeName = bigTypeName;
    }

    @Override
    public String toString() {
        return "BigType{" +
                "bigTypeId=" + bigTypeId +
                ", bigTypeName='" + bigTypeName + '\'' +
                '}';
    }
}

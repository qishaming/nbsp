package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_bigType")
public class bigType {
    @Id
    @Column(name = "bigTypeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer bigTypeId;
    @Column(name = "bigTypeName")
    private String bigTypeName;

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
        return "bigType{" +
                "bigTypeId=" + bigTypeId +
                ", bigTypeName='" + bigTypeName + '\'' +
                '}';
    }
}

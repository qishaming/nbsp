package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_smalltype")
public class SmallType {

    @Id
    @Column(name = "smallTypeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer smallTypeId;//主键

    @Column(name = "bigTypeId")
    private String bigTypeId;//大类ID

    @Column(name = "bigTypeName")
    private String bigTypeName;//大类名称

    @Column(name = "smallTypeName")
    private String smallTypeName;//大类名称

    public Integer getSmallTypeId() {
        return smallTypeId;
    }

    public void setSmallTypeId(Integer smallTypeId) {
        this.smallTypeId = smallTypeId;
    }

    public String getBigTypeId() {
        return bigTypeId;
    }

    public void setBigTypeId(String bigTypeId) {
        this.bigTypeId = bigTypeId;
    }

    public String getSmallTypeName() {
        return smallTypeName;
    }

    public void setSmallTypeName(String smallTypeName) {
        this.smallTypeName = smallTypeName;
    }

    @Override
    public String toString() {
        return "SmallType{" +
                "smallTypeId=" + smallTypeId +
                ", bigTypeId='" + bigTypeId + '\'' +
                ", smallTypeName='" + smallTypeName + '\'' +
                '}';
    }
}

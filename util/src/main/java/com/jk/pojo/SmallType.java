package com.jk.pojo;
import javax.persistence.*;

@Entity
@Table(name = "pyg_smallType")
public class SmallType {
    @Id
    @Column(name = "smallTypeId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer smallTypeId;
    @Column(name = "smallTypeName")
    private String smallTypeName;
    @Column(name = "bigTypeId")
    private Integer bigTypeId;

    public Integer getSmallTypeId() {
        return smallTypeId;
    }

    public void setSmallTypeId(Integer smallTypeId) {
        this.smallTypeId = smallTypeId;
    }

    public String getSmallTypeName() {
        return smallTypeName;
    }

    public void setSmallTypeName(String smallTypeName) {
        this.smallTypeName = smallTypeName;
    }

    public Integer getBigTypeId() {
        return bigTypeId;
    }

    public void setBigTypeId(Integer bigTypeId) {
        this.bigTypeId = bigTypeId;
    }

    @Override
    public String toString() {
        return "smallType{" +
                "smallTypeId=" + smallTypeId +
                ", smallTypeName='" + smallTypeName + '\'' +
                ", bigTypeId=" + bigTypeId +
                '}';
    }
}

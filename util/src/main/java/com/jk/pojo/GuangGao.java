package com.jk.pojo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.*;

@Entity
@Table(name = "guanggao")
public class GuangGao {

    @Id
    @Column(name = "gid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer gid;
    @Column(name = "gstate")
    private Integer gstate;
    @Column(name = "gphoto")
    private String gphoto;
    @Column(name = "gmid")
    private Integer gmid;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getGstate() {
        return gstate;
    }

    public void setGstate(Integer gstate) {
        this.gstate = gstate;
    }

    public String getGphoto() {
        return gphoto;
    }

    public void setGphoto(String gphoto) {
        this.gphoto = gphoto;
    }

    public Integer getGmid() {
        return gmid;
    }

    public void setGmid(Integer gmid) {
        this.gmid = gmid;
    }

    @Override
    public String toString() {
        return "GuangGao{" +
                "gid=" + gid +
                ", gstate=" + gstate +
                ", gphoto='" + gphoto + '\'' +
                ", gmid=" + gmid +
                '}';
    }
}

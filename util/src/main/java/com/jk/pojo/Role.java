package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_role")
public class Role {

    @Id
    @Column(name = "roleid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer roleid;
    @Column(name = "rolename")
    private String rolename;

    @Override
    public String toString() {
        return "Role{" +
                "roleid=" + roleid +
                ", rolename='" + rolename + '\'' +
                '}';
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
    /*pull?*/
}

package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {

    @Id
    @Column(name = "u_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer id;
    @Column(name = "u_username")
    private String username;
    @Column(name = "u_password")
    private String password;
    @Column(name = "u_state")
    private Integer userstate;
    @Column(name = "u_phone")
    private String userphone;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getUserstate() {
        return userstate;
    }

    public void setUserstate(Integer userstate) {
        this.userstate = userstate;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", userstate=" + userstate +
                ", userphone='" + userphone + '\'' +
                '}';
    }
}

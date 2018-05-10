package com.jk.pojo;

import javax.persistence.*;

@Entity
@Table(name = "pyg_customer")
public class Customer {

    @Id
    @Column(name = "customerId")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer customerId;

    @Column(name = "customerName")
    private String customerName;

    @Column(name = "customerSex")
    private Integer customerSex;

    @Column(name = "customerPhone")
    private String customerPhone;

    @Column(name = "customerAge")
    private Integer customerAge;

    @Column(name = "customerBirthday")
    private String customerBirthday;

    @Column(name = "customerPhoto")
    private String customerPhoto;

    @Column(name = "customerRegisterTime")
    private String customerRegisterTime;

    @Column(name = "customerUpdateTime")
    private String customerUpdateTime;

    @Column(name = "customerDeliveryAddress")
    private String customerDeliveryAddress;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Integer getCustomerSex() {
        return customerSex;
    }

    public void setCustomerSex(Integer customerSex) {
        this.customerSex = customerSex;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public Integer getCustomerAge() {
        return customerAge;
    }

    public void setCustomerAge(Integer customerAge) {
        this.customerAge = customerAge;
    }

    public String getCustomerBirthday() {
        return customerBirthday;
    }

    public void setCustomerBirthday(String customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public String getCustomerPhoto() {
        return customerPhoto;
    }

    public void setCustomerPhoto(String customerPhoto) {
        this.customerPhoto = customerPhoto;
    }

    public String getCustomerRegisterTime() {
        return customerRegisterTime;
    }

    public void setCustomerRegisterTime(String customerRegisterTime) {
        this.customerRegisterTime = customerRegisterTime;
    }

    public String getCustomerUpdateTime() {
        return customerUpdateTime;
    }

    public void setCustomerUpdateTime(String customerUpdateTime) {
        this.customerUpdateTime = customerUpdateTime;
    }

    public String getCustomerDeliveryAddress() {
        return customerDeliveryAddress;
    }

    public void setCustomerDeliveryAddress(String customerDeliveryAddress) {
        this.customerDeliveryAddress = customerDeliveryAddress;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerName='" + customerName + '\'' +
                ", customerSex=" + customerSex +
                ", customerPhone='" + customerPhone + '\'' +
                ", customerAge=" + customerAge +
                ", customerBirthday='" + customerBirthday + '\'' +
                ", customerPhoto='" + customerPhoto + '\'' +
                ", customerRegisterTime='" + customerRegisterTime + '\'' +
                ", customerUpdateTime='" + customerUpdateTime + '\'' +
                ", customerDeliveryAddress='" + customerDeliveryAddress + '\'' +
                '}';
    }
}

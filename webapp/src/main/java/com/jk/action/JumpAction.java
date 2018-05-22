package com.jk.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

@Namespace(value="/jump")
@ParentPackage("basePackage")
public class JumpAction {


    /**
     * 跳转商家管理页面
     * @return
     */
    @Action(value = "shangjiagl",results = {
            @Result(name = "success",location = "/zq/shangjiagl.jsp")
    })
    public String shangjiagl(){
        return  "success";
    }

    /**
     * 跳转品牌管理页面
     * @return
     */
    @Action(value = "shangpinpinpail",results = {
            @Result(name = "success",location = "/zq/shangpinpinpail.jsp")
    })
    public String shangpinpinpail(){
        return  "success";
    }

    @Action(value = "shangpingl",results = {
            @Result(name = "success",location = "/zq/shangpingl.jsp")
    })
    public String shangpingl(){
        return  "success";
    }

    //跳商品管理
    @Action(value = "tiao",results = {
            @Result(name = "syz",location = "/syz/syzshow.jsp")
    })
    public String tiao(){
        return      "syz";
    }
    //跳信息管理
    @Action(value = "info",results = {
            @Result(name = "gyc",location = "/gyc/showRegister.jsp")
    })
    public String info(){
        return      "gyc";
    }
    //跳修改密码
    @Action(value = "updatePass",results = {
            @Result(name = "gyc1",location = "/gyc/updatePsword.jsp")
    })
    public String updatePass(){
        return      "gyc1";
    }

    //跳品牌管理
    @Action(value = "tiaoPinpai",results = {
            @Result(name = "syz1",location = "/syz/brand.jsp")
    })
    public String tiaoPinpai(){
        return      "syz1";
    }

    //跳品牌管理
    @Action(value = "jumpOrder",results = {
            @Result(name = "success",location = "/businessOrder.jsp")
    })
    public String jumpOrder(){
        return      "success";
    }

}

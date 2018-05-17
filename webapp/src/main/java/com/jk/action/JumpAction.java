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
}

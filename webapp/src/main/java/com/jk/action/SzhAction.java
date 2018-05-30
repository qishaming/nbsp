package com.jk.action;

import com.jk.pojo.*;
import com.jk.service.BigTypeService;
import com.jk.service.testService;
import com.jk.util.ExportExcel;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Namespace(value="/szh")
@ParentPackage("basePackage")
public class SzhAction extends BaseAction /*implements ModelDriven<Repertory>*/{
    @Autowired
    private BigTypeService bigTypeService;



    /**
     * 这是查询库存的方法
     */
    @Action(value = "querydaBig")
    public void querydaBig(){

        /*List<BigType> list = bigTypeService.querydaBig();
        super.writeJson(list);*/

    }

    /**
     * 这是跳转到auditRepertory.jsp页面的方法
     * @return
     */
    @Action(value = "da",results = {
            @Result(name = "da",location = "/szh/da.jsp")
    })
    public String jumpAudirRepertory(){
        return  "da";
    }

    public BigTypeService getBigTypeService() {
        return bigTypeService;
    }

    public void setBigTypeService(BigTypeService bigTypeService) {
        this.bigTypeService = bigTypeService;
    }
}

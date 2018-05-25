package com.jk.action;

import com.jk.pojo.*;
import com.jk.service.SmallTypeService;
import com.jk.service.testService;
import com.jk.util.ExportExcel;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Namespace(value="/small")
@ParentPackage("basePackage")
public class SmallAction extends BaseAction /*implements ModelDriven<Repertory>*/{
    @Autowired
    private SmallTypeService smallTypeService;
    private SmallType smallType = new SmallType();

    private  static final Logger logger = Logger.getLogger(SmallAction.class);


    /**
     * 这是跳转到auditRepertory.jsp页面的方法
     * @return
     */
    @Action(value = "smallTypeList",results = {
            @Result(name = "smallTypeList",location = "/smallTypejsp/smallTypeList.jsp")
    })
    public String jumpAudirRepertory(){
        return  "smallTypeList";
    }

    /**
     * 这是查询库存的方法
     */
    @Action(value = "querySmallType")
    public void querySmallType(){
        List<SmallType> list = smallTypeService.querySmallType();
        super.writeJson(list);
    }

    @Action(value = "addSmallType")
    public void addSmallType(){
        smallTypeService.addSmallType(smallType);
    }

    @Action(value = "deleteSmallType")
    public void deleteSmallType(){
        smallTypeService.deleteSmallType(smallType.getSmallTypeId());
    }

    public SmallType getSmallType() {
        return smallType;
    }

    public void setSmallType(SmallType smallType) {
        this.smallType = smallType;
    }

}

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

import static javax.print.attribute.standard.MediaSizeName.B;

@Namespace(value="/big")
@ParentPackage("basePackage")
public class BigAction extends BaseAction /*implements ModelDriven<Repertory>*/{

    @Autowired
    private BigTypeService bigTypeService;
    private  BigType bigType = new BigType();

    private  static final Logger logger = Logger.getLogger(BigAction.class);

    /**
     * 这是查询库存的方法
     */
    @Action(value = "queryBigType")
    public void queryBigType(){
        List<BigType> list = bigTypeService.queryBigType();
        super.writeJson(list);
    }

    /**
     * 这是跳转到list页面的方法
     * @return
     */
    @Action(value = "bigTypeList",results = {
            @Result(name = "bigTypeList",location = "/bigTypejsp/bigTypeList.jsp")
    })
    public String jumpAudirRepertory(){
        return  "bigTypeList";
    }


    @Action(value = "addBigType")
    public void addBigType(){
        bigTypeService.addBigType(bigType);
    }

    @Action(value = "deleteBigType")
    public void deleteBigType(){
        bigTypeService.deleteBigType(bigType.getBigTypeId());
    }

    public BigType getBigType() {
        return bigType;
    }

    public void setBigType(BigType bigType) {
        this.bigType = bigType;
    }
}

package com.jk.action;

import com.alibaba.fastjson.JSON;
import com.jk.service.testService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Namespace(value="/jpl")
@ParentPackage("struts-default")
public class jplAction extends BaseAction{

    @Autowired
    private testService service;

    private List list;
    private HttpServletRequest request;

    /**
     * @return
     */
    @Action(value = "queryRepertory"
    )
    public void queryRepertory(){
        //request.getSession().getAttribute("");
        List list = service.queryRepertory();
        for (int i=0;i<list.size();i++){
            System.out.println("这是返回值"+list.get(i));
        }

        super.writeJson(list);
    }

    @Action(value = "aa",results = {
            @Result(name = "bb",location = "/jpljsp/auditRepertory.jsp")
    })
    public String jumpAudirRepertory(){
        return  "bb";
    }





    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}

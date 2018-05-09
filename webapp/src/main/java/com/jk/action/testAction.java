package com.jk.action;

import com.jk.pojo.User;
import com.jk.service.testService;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
@Action(value = "test",results = {
        @Result(name = "show",location = "/show.jsp")
})
public class testAction  implements ModelDriven<User>{

    @Autowired
    private testService service;

    private Integer id;

    private List list;

    public String  toShow(){
        list = service.queryAll();
        return  "show";
    }

    public List getList() {
        return list;
    }

    @Override
    public User getModel() {
        return null;
    }
}

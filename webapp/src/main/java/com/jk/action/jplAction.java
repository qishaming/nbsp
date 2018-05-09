package com.jk.action;

import com.jk.service.testService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@Action(value = "test",results = {
        @Result(name = "show",location = "/show.jsp")
})
public class jplAction {

    @Autowired
    private testService service;

}

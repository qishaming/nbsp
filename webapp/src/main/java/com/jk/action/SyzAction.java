package com.jk.action;

import com.jk.service.SyzService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
@Action(value = "sun",results = {
        @Result(name = "show",location = "/showtow.jsp")
})
public class SyzAction {

}

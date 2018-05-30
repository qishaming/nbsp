package com.jk.util;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class Myinterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession();
        if(session.getAttribute("user")!=null||!session.getAttribute("user").equals("")){
            actionInvocation.invoke();

        }
        System.out.println("被拦截了");
        return "login";
    }
}

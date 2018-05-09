package com.jk.action;

import com.alibaba.fastjson.JSON;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class BaseAction{

	public void writeJson(Object object){
		try {
			String json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void outString(String json) {
		PrintWriter writer = null;
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		try {
			writer = response.getWriter();
			writer.write(json);
			writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (null != writer) {
				writer.close();
				writer = null;
			}
		}
	}
	
}

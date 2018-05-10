package com.jk.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;
import java.util.Map;

public interface LoginService {


    Map<String,Object> login(String username, String password,String validataCode,String sessionCode);
}

package com.jk.service.Impl;

import com.jk.dao.LoginDao;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import com.jk.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginDao loginDao;


    @Override
    public Map<String, Object> login(String username, String password,String validataCode,String sessionCode) {
        Map<String, Object> map = new HashMap<String, Object>();
        System.out.println(validataCode+"===========");
        System.out.println(sessionCode+"===========");
        String mas="";
        User user=loginDao.querylogin(username);
       /* int loginFlag=0;*/
        if(user!=null){
            System.out.print(user.getUserid());
                Merchant  merchant= loginDao.queryMerchant(user.getUserid());
                map.put("merchant",merchant);
            if(password.equals(user.getPassword())){
                if(validataCode.equalsIgnoreCase(sessionCode)){
                    if(user.getUserstate()==1){
                        map.put("user", user);
                        mas="1";//根据不同的mas值跳页面
                    }
                    else if(user.getUserstate()==2){
                        map.put("user", user);
                        mas="2";//根据不同的mas值跳页面
                    }
                    else if(user.getUserstate()==3){
                        map.put("user", user);
                        mas="3";//根据不同的mas值跳页面
                    }
                }else{
                    mas="errorcode";
                    /*loginFlag=4;
                    ServletActionContext.getRequest().getSession().setAttribute("loginFlag",loginFlag);*/
                }
               /* mas="success";
                map.put("user", user);*/
            }else{
                mas="passworderror";
            }
        }else{
            //用户名不存在
            mas="usererror";
        }
        map.put("mas", mas);
        return map;
    }
}

package com.jk.action;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import com.jk.service.LoginService;
import com.jk.util.ValidateCodeUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Namespace(value="/LoginAction")
@ParentPackage("struts-default")
public class LoginAction extends BaseAction{

    @Autowired
    private LoginService loginService;

    private  String validataCode;

    public String getValidataCode() {
        return validataCode;
    }

    public void setValidataCode(String validataCode) {
        this.validataCode = validataCode;
    }
    private User user=new User();

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    private String username;
    private String password;

    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }
    public LoginAction(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }





      /*获取登录验证码图片=============================================================*/
    @Action(value = "validateCode")
    public void validateCode(
            /*HttpServletRequest request,
            HttpServletResponse response*/){

        // 设置响应的类型格式为图片格式
        //response.setContentType("image/jpeg");
        ServletActionContext.getResponse().setContentType("image/jpeg");
        //禁止图像缓存。
        ServletActionContext.getResponse().setHeader("Pragma", "no-cache");
        ServletActionContext.getResponse().setHeader("Cache-Control", "no-cache");
        ServletActionContext.getResponse().setDateHeader("Expires", 0);

        //获取session对象(放开)
       // HttpSession session = request.getSession();

        //获取验证码图片以及验证码code值
        ValidateCodeUtil vCode = new ValidateCodeUtil(100,35,4,40);

        //将验证码code值存入session当中
        ServletActionContext.getRequest().getSession().setAttribute("code", vCode.getCode());

        try {
            //将验证码图片写入到jsp页面
            vCode.write( ServletActionContext.getResponse().getOutputStream());
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

        /*登陆的方法==============================================================*/
        @Action(value = "login")
        public void login(/*String validataCode, HttpSession session,User user,HttpServletRequest request, HttpServletResponse response*/){

           /* Map<String,Object> map=new HashMap<String,Object>();
            String sessionCode = session.getAttribute("code").toString();
            map=loginService.login(validataCode,session,user,request,response);
            super.writeJson(map);*/
            Map<String,Object> map=new HashMap<String,Object>();
            String sessionCode = ServletActionContext.getRequest().getSession().getAttribute("code").toString();
            map=loginService.login(username,password,validataCode,sessionCode);
            String mas = (String) map.get("mas");

            int loginFlag=1;
            if(mas=="errorcode"){
                loginFlag=4;
                ServletActionContext.getRequest().getSession().setAttribute("loginFlag",loginFlag);
            }
            //暂时无用，用于主页面注销使用
            User user = (User) map.get("user");
            Merchant merchant= (Merchant) map.get("merchant");
            ServletActionContext.getRequest().getSession().setAttribute("merchant",merchant);
            if(user!=null){
                //HttpServletRequest request= ServletActionContext.getRequest();get
                ServletActionContext.getRequest().getSession().setAttribute("user",user);
                ServletActionContext.getRequest().getSession().setAttribute("username",user.getUsername());
            }
            super.writeJson(mas);
    }

    /*获取注册的短信验证码=============================================================*/
  /*  @Action(value = "getyanzhengma")
    public String getyanzhengma(String phone,HttpSession session) throws IOException{
        String ccode = com.jk.util.HttpClient.togetString(phone);
        session.setAttribute("ccode", ccode);
        session.setAttribute("fasongtime", new Date().getTime());
        return ""+1;

    }*/

}
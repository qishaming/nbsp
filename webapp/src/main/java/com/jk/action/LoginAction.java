package com.jk.action;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.jk.pojo.Logs;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import com.jk.service.LoginService;
/*import com.jk.util.HttpClient;*/
import com.jk.util.ValidateCodeUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.rmi.ServerException;
import java.text.SimpleDateFormat;
import java.util.*;

@Namespace(value="/LoginAction")
@ParentPackage("struts-default")
public class LoginAction extends BaseAction{
    private static Random dom = new Random();

    @Autowired
    private LoginService loginService;

    private Merchant merchant=new Merchant();

    public Merchant getMerchant() {
        return merchant;
    }

    public void setMerchant(Merchant merchant) {
        this.merchant = merchant;
    }

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    private String code;

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    private String userphone;


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
    //用于日志的相关操作=======================================================
    private Integer page;
    private Integer rows;
    private String timestart;
    private String timeend;
    private Integer count;
    private List list;
    private String[] ids;

    public void setIds(String[] ids) {
        this.ids = ids;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getTimestart() {
        return timestart;
    }

    public void setTimestart(String timestart) {
        this.timestart = timestart;
    }

    public String getTimeend() {
        return timeend;
    }

    public void setTimeend(String timeend) {
        this.timeend = timeend;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    /*mogodb日志查询=============================================================*/
   /* @Autowired
    private MongoTemplate mongoTemplate;

    @Action(value = "queryRiZhi")
    public *//*Map<String,Object>*//*void queryRiZhi(*//*Integer page,Integer rows,String timestart,String timeend*//*){

        Map<String,Object> map = new HashMap<String, Object>();

        Criteria criteria = new Criteria();

        System.out.println(timestart+"time1");
        System.out.println(timeend+"time2");

        if(timestart!=null){
            if(timestart!=null&&!"".equals(timestart)){
                if(timeend!=null&&!"".equals(timeend)){
                    criteria.and("tiem").gte(timestart).lte(timeend);
                }else{
                    criteria.and("tiem").gte(timestart);
                }
            }else if(timeend!=null&&!"".equals(timeend)){
                criteria.and("tiem").lte(timeend);
            }
        }
        Query query = new Query();
        query.skip(page).limit(rows);
        //进行查询条件的方法
        query.addCriteria(criteria);
        List<Logs> list = mongoTemplate.find(query, Logs.class,"logs");
        long count = mongoTemplate.count(query,Logs.class,"logs");
        map.put("total", count);
        map.put("rows", list);

        super.writeJson(map);
    }
*/
    //删除日志=========================================================================
   /* @Action(value = "deleteLogs")
    public void deleteLogs(){

        String message = "success";
        List<Logs> resultList = new ArrayList<Logs>();
        int length = ids.length;
        int deleteNum = 0;
        Query query = new Query();
        //删除之前在log中记录当前数据总数
        int count = 0;
        count = mongoTemplate.findAll(Logs.class).size();
        System.out.println("Batch delete sentences-->Before delete ,the collection of exampleSentence total number："+count);
        //Criteria.where("id").in(sentenceIdTemp)中的参数sentenceIdTemp必须是Object,否则出现警告
        Object[] sentenceIdTemp = ids;
        query = Query.query(Criteria.where("logId").in(sentenceIdTemp));
        WriteResult writeResult = mongoTemplate.remove(query, Logs.class);
        //getN()只计算updated和removed的记录；
        deleteNum = writeResult.getN();
        System.out.println("Batch delete sentences-->The collection of exampleSentence total numbers that have deleted："+deleteNum);
        if (deleteNum < length) {
            message = "notExist";
    }
        super.writeJson(message);
    }*/
    /*获取登录验证码图片=============================================================*/
    @Action(value = "validateCode")
    public void validateCode(){
        // 设置响应的类型格式为图片格式
        ServletActionContext.getResponse().setContentType("image/jpeg");
        //禁止图像缓存。
        ServletActionContext.getResponse().setHeader("Pragma", "no-cache");
        ServletActionContext.getResponse().setHeader("Cache-Control", "no-cache");
        ServletActionContext.getResponse().setDateHeader("Expires", 0);

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
            if(user!=null){
                Merchant merchant= (Merchant) map.get("merchant");
                ServletActionContext.getRequest().getSession().setAttribute("merchant",merchant);
                ServletActionContext.getRequest().getSession().setAttribute("user",user);
                //HttpServletRequest request= ServletActionContext.getRequest();
                ServletActionContext.getRequest().getSession().setAttribute("userstate",user.getUserstate());
                ServletActionContext.getRequest().getSession().setAttribute("username",user.getUsername());
            }
            super.writeJson(mas);
    }

    //*获取注册的短信验证码============================================================
    @Action(value = "yanzhengPhone")
    public void yanzhengPhone() throws ServerException, ClientException {

        String code = (dom.nextInt(9000)+1000)+"";
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //初始化ascClient需要的几个参数
        final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
        final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
        //替换成你的AK
       final String accessKeyId = "LTAIK6G9BYNIZcZS";//你的accessKeyId,参考本文档步骤2
       //final String accessKeyId = "LTAI3wPhzsoPip2v";//你的accessKeyId,参考本文档步骤2
        final String accessKeySecret = "jWSbLihU9v16TmczSlY51yf2HDa68M";//你的accessKeySecret，参考本文档步骤2
        //final String accessKeySecret = "yANFyoFd67Us6IJuTfR9xX0Lfnpoqn";//你的accessKeySecret，参考本文档步骤2
        //初始化ascClient,暂时不支持多region（请勿修改）
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId,
                accessKeySecret);

        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);

        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();
        //使用post提交
        request.setMethod(MethodType.POST);
        //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
        request.setPhoneNumbers(userphone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("品邮购");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_134317096");
        //request.setTemplateCode("SMS_134327592");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        request.setTemplateParam("{\"name\":\"Tom\", \"code\":\""+code+"\"}");
        //可选-上行短信扩展码(扩展码字段控制在7位或以下，无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");
        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId("yourOutId");
        //请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
        if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
           /* req.getSession().setAttribute(userphone,code);*/
            ServletActionContext.getRequest().getSession().setAttribute("code",code);
            ServletActionContext.getRequest().getSession().setAttribute("phone",userphone);
            System.out.println(sendSmsResponse.getCode());
            /*我注释的return sendSmsResponse.getCode();*/
        }

    }
    //*进行普通用户注册============================================================
    @Action(value = "zhuce")
    public void zhuce(){
        String phone = ServletActionContext.getRequest().getSession().getAttribute("phone").toString();
        String Code = ServletActionContext.getRequest().getSession().getAttribute("code").toString();
        String username=user.getUsername();
        String password=user.getPassword();

        String megar="";
        if(user.getUserphone().equals(phone)&&code.equals(Code)){
            loginService.addzhuces(username,password,phone);

            megar= "2";
        }else {

            megar= "1";
        }
        super.writeJson(megar);
    }
    //*进行商家的注册1页面============================================================
    @Action(value = "zhuce1")
    public void zhuce1(){
        String phone = ServletActionContext.getRequest().getSession().getAttribute("phone").toString();
        String Code = ServletActionContext.getRequest().getSession().getAttribute("code").toString();
        String username=user.getUsername();
        String password=user.getPassword();

        String megar="";
        if(user.getUserphone().equals(phone)&&code.equals(Code)){
            loginService.addzhuces1(username,password,phone);

            megar= "2";
        }else {

            megar= "1";
        }
        super.writeJson(megar);
    }
    //*进行商家的注册2页面============================================================
    @Action(value = "addMerchant")
    public void   addMerchant(){

        String phone = ServletActionContext.getRequest().getSession().getAttribute("phone").toString();
        User u=loginService.queryMerchantIdByPhone(phone);

            merchant.setUserid(u.getUserid());
            merchant.setMerchantRegisterTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).toString());
            merchant.setMerchantUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).toString());
            String ss="";
            try {
                loginService.addMerchant(merchant);
                ss="aa";
            }catch (Exception e){
                e.printStackTrace();
                ss="bb";
            }
          super.writeJson(ss);
    }


}
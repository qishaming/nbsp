package com.jk.action;

import com.jk.pojo.GuangGao;
import com.jk.service.LoginService;
import com.jk.util.FileUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Namespace(value="/ZnnAction")
@ParentPackage("basePackage")
public class ZnnAction extends BaseAction{

    @Autowired
    private LoginService loginService;

    private List list;
    private List list1;
    private Integer gid;
    private GuangGao guangGao=new GuangGao();
    private String uploadFileFileName;
    private File uploadFile;

    public String getUploadFileFileName() { return uploadFileFileName; }
    public void setUploadFileFileName(String uploadFileFileName) { this.uploadFileFileName = uploadFileFileName; }
    public File getUploadFile() { return uploadFile; }
    public void setUploadFile(File uploadFile) { this.uploadFile = uploadFile; }
    public List getList() { return list; }
    public void setList(List list) { this.list = list; }
    public List getList1() { return list1; }
    public void setList1(List list1) { this.list1 = list1; }
    public Integer getGid() { return gid; }
    public void setGid(Integer gid) { this.gid = gid; }
    public GuangGao getGuangGao() { return guangGao; }
    public void setGuangGao(GuangGao guangGao) { this.guangGao = guangGao; }
   //用于页面跳转-----------------------------
    @Action(value = "GuangGao",results = {
            @Result(name = "guanggao",location = "/guanggao2.jsp")
    })
    public  String  GuangGao(){
        return "guanggao";
    }
    //用于轮播图操作-----------------------------
    @Action(value = "queryGuangGao")
    public  void  queryGuangGao(){
        list=loginService.queryGuangGao();
        super.writeJson(list);
    }
    @Action(value = "queryMerchantName")
    public  void  queryMerchantName(){
        list1=loginService.queryMerchantName();
        super.writeJson(list1);
    }
    //修改的查询=========================
    @Action(value = "queryGuangGaoById")
    public  void  queryGuangGaoById(){
        System.out.println(gid+"============gid");
        GuangGao guangGao=loginService.queryGuangGaoById(gid);
        super.writeJson(guangGao);
    }
    @Action(value = "updateGuangGao")
    public  void  updateGuangGao(){
        loginService.updateGuangGao(guangGao);
    }

    //新增=========================
    @Action(value = "addGuangGao")
    public  void  addGuangGao(){
        loginService.addGuangGao(guangGao);
    }
    //上传图片=======================
    @Action("/scwj")
    public void scwj(){
        PrintWriter writer = null;
        try {
            String upLoadFilePath = FileUtil.upLoad(uploadFile, uploadFileFileName, "imgznn");
            ServletActionContext.getResponse().setCharacterEncoding("utf-8");
            writer = ServletActionContext.getResponse().getWriter();
            writer.write(upLoadFilePath);
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(writer != null){
                writer.close();
            }
        }
    }
    //删除=========================
    @Action(value = "deleteGuangGao")
    public  void  deleteGuangGao(){
        loginService.deleteGuangGao(gid);
    }



}

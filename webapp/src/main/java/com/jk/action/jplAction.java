package com.jk.action;

import com.alibaba.fastjson.JSON;
import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;
import com.jk.service.testService;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.media.sound.ModelDirectedPlayer;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Namespace(value="/jpl")
@ParentPackage("struts-default")
public class jplAction extends BaseAction /*implements ModelDriven<Repertory>*/{

    @Autowired
    private testService service;

    private List list;
    private HttpServletRequest request;
    private Integer repertoryId;
    private Integer repertoryNumber;




    private Integer goodsid;
    private Repertory repertory = new Repertory();
    /**
     * 这是查询库存的方法
     */
    @Action(value = "queryRepertory")
    public void queryRepertory(){
        //request.getSession().getAttribute("");
        List list = service.queryRepertory();
        for (int i=0;i<list.size();i++){
            System.out.println("这是返回值"+list.get(i));
        }

        super.writeJson(list);
    }

    /**
     * 这是跳转到auditRepertory.jsp页面的方法
     * @return
     */
    @Action(value = "aa",results = {
            @Result(name = "bb",location = "/jpljsp/auditRepertory.jsp")
    })
    public String jumpAudirRepertory(){
        return  "bb";
    }

    /**
     * 这是根据ID查库存的方法
     * @return
     */
    @Action(value = "queryCountById")
    public void queryCountById(){

        System.out.println(repertoryId+"============");

        Repertory r = service.queryCountById(repertoryId);

           super.writeJson(r);

    }


    /**
     * 下架的方法
     * @return
     */
    @Action(value = "xiaJiaById")
    public void xiaJiaById(){
        Goods g = new Goods();
        g.setGoodsid(goodsid);
        g.setGoodsAuditState(4);
        service.xiaJiaById(g);

    }

    /**
     * 上架的方法
     * @return
     */
    @Action(value = "shangJiaById")
    public void shangJiaById(){
        Goods g = new Goods();
        g.setGoodsid(goodsid);
        g.setGoodsAuditState(3);
        service.shangJiaById(g);
    }

    /**
     * 修改库存的方法
     * @return
     */
    @Action(value = "updatedRepertory")
    public void updatedRepertory(){
        service.updatedRepertory(repertory);
    }



    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Integer getRepertoryId() {
        return repertoryId;
    }

    public void setRepertoryId(Integer repertoryId) {
        this.repertoryId = repertoryId;
    }

    public Integer getRepertoryNumber() {
        return repertoryNumber;
    }

    public void setRepertoryNumber(Integer repertoryNumber) {
        this.repertoryNumber = repertoryNumber;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Repertory getRepertory() {
        return repertory;
    }

    public void setRepertory(Repertory repertory) {
        this.repertory = repertory;
    }

    /*@Override
    public Repertory getModel() {
        return repertory;
    }*/
}

package com.jk.action;

import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;
import com.jk.service.testService;
import com.jk.util.ExportExcel;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

@Namespace(value="/jpl")
@ParentPackage("basePackage")
public class jplAction extends BaseAction /*implements ModelDriven<Repertory>*/{

    @Autowired
    private testService service;

    private List list;
    private Integer repertoryId;
    private Integer repertoryNumber;
    private Integer goodsid;
    private Repertory repertory = new Repertory();
    private  static final Logger logger = Logger.getLogger(jplAction.class);
    private HttpServletResponse responsee;
    private HttpServletRequest request;
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

    @Action(value = "poiExcel")
    public void poiExcel(){
        List list = service.queryRepertoryExcel();
        //设置表头
        String[] rowName = {"库存编号","修改时间","库存数量","商品名称","商品类型","商品品牌","商品规格","商品价格"};
        List<Object[]> dataList=new ArrayList<Object[]>();
        for (int i = 0; i < list.size(); i++) {
           /* HashMap<String,Object> map = (HashMap<String, Object>) list.get(i);
            Object[] array = map.values().toArray();*/

            dataList.add((Object[]) list.get(i));
        }
        ExportExcel exportExcel = new ExportExcel("库存信息",rowName, dataList,responsee);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public HttpServletResponse getResponsee() {
        return responsee;
    }

    public void setResponsee(HttpServletResponse responsee) {
        this.responsee = responsee;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
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

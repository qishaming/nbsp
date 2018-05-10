package com.jk.action;

import com.jk.pojo.Goods;
import com.jk.service.SyzService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Namespace(value="/syz")
@ParentPackage("struts-default")
public class SyzAction extends BaseAction{

    @Autowired
    private SyzService syzService;

    private Goods goods=new Goods();
    private Integer goodsid;
    private List list;

    @Action(value="/queryGoods")
    public void queryGoods(){

        list = syzService.queryGoods();

        super.writeJson(list);
    }

    public List getList() {
        return list;
    }


}

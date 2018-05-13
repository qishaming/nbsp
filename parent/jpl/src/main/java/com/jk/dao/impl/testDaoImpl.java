package com.jk.dao.impl;

import com.jk.dao.testDao;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public class testDaoImpl implements testDao {

    @Autowired
    private  SessionFactory sessionFactory;

    @Override
    public List queryAll() {
       StringBuffer hql=new StringBuffer(" from User");
       List list= this.sessionFactory.openSession().createQuery(hql.toString()).list();
        return list ;
    }

    @Override
    public List queryRepertory() {
        StringBuffer sql=new StringBuffer("SELECT pr.repertoryId,pr.repertoryUpdateTime,pr.repertoryNumber,pg.*,pb.brandName,pgt.goodstypename,pgs.goodsSizeName FROM 6month.pyg_repertory pr " +
                "LEFT JOIN 6month.pyg_goods pg ON pr.goodsid=pg.goodsid " +
                "LEFT JOIN 6month.pyg_brand pb ON pb.brandId=pg.brandId " +
                "LEFT JOIN 6month.pyg_goodstype pgt ON pgt.goodstypeid=pg.typeid " +
                "LEFT JOIN 6month.pyg_goodssize pgs ON pgs.goodsSizeId=pg.sizeId");
        List list = sessionFactory.openSession().createSQLQuery(sql.toString()).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list ;
    }
}

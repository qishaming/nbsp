package com.jk.dao.impl;

import com.jk.dao.testDao;
import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;
import com.jk.pojo.User;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.Date;
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
    public List queryRepertory(User u) {
        StringBuffer sql=new StringBuffer("SELECT pr.repertoryId,pr.repertoryUpdateTime,pr.repertoryNumber,pg.*,pb.brandName,pgs.goodsSizeName,pst.smallTypeName FROM 6month.pyg_repertory pr " +
                "                LEFT JOIN 6month.pyg_goods pg ON pr.goodsid=pg.goodsid " +
                "                LEFT JOIN 6month.pyg_brand pb ON pb.brandId=pg.brandId " +
                "                LEFT JOIN 6month.pyg_goodssize pgs ON pgs.goodsSizeId=pg.sizeId " +
                "                LEFT JOIN 6month.pyg_smalltype pst ON pst.smallTypeId=pg.smallTypeId" +
                "                LEFT JOIN 6month.pyg_merchant pm ON pm.merchantId=pg.merchantId" +
                "                LEFT JOIN 6month.user u ON u.userid=pm.userid " +
                "                WHERE u.userid="+u.getUserid());
        List list = sessionFactory.openSession().createSQLQuery(sql.toString()).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list ;
    }

    @Override
    public Repertory queryCountById(Integer repertoryId) {
        Repertory r = sessionFactory.openSession().get(Repertory.class,repertoryId);
        return r;
    }

    @Override
    public void xiaJiaById(Goods goods) {
        String sql = "UPDATE 6month.pyg_goods SET goodsAuditState = "+goods.getGoodsAuditState()+" WHERE goodsid = "+goods.getGoodsId();
        sessionFactory.openSession().createSQLQuery(sql).executeUpdate();
    }

    @Override
    public void shangJiaById(Goods goods) {
        String sql = "UPDATE 6month.pyg_goods SET goodsAuditState = "+goods.getGoodsAuditState()+" WHERE goodsid = "+goods.getGoodsId();
        sessionFactory.openSession().createSQLQuery(sql).executeUpdate();
    }

    @Override
    public void updatedRepertory(Repertory repertory) {
        Date d = new Date();
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = sim.format(d);

        String sql = "UPDATE pyg_repertory SET repertoryNumber = "+repertory.getRepertoryNumber()+",repertoryUpdateTime='"+date+"' WHERE repertoryId = "+repertory.getRepertoryId();


        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
    }

    @Override
    public List queryRepertoryExcel(User u) {
        StringBuffer sql=new StringBuffer("SELECT pr.repertoryId,pr.repertoryUpdateTime,pr.repertoryNumber,pg.goodsname,pst.smallTypeName,pb.brandName,pgs.goodsSizeName,pg.goodsPrice FROM 6month.pyg_repertory pr "
                +"LEFT JOIN 6month.pyg_goods pg ON pr.goodsId=pg.goodsId "
                +"LEFT JOIN 6month.pyg_brand pb ON pb.brandId=pg.brandId "
                +"LEFT JOIN 6month.pyg_goodssize pgs ON pgs.goodsSizeId=pg.sizeId "
                +"LEFT JOIN 6month.pyg_smalltype pst ON pg.smallTypeId=pst.smallTypeId"+
                "                LEFT JOIN 6month.pyg_merchant pm ON pm.merchantId=pg.merchantId" +
                        "                LEFT JOIN 6month.user u ON u.userid=pm.userid " +
                        "                WHERE u.userid="+u.getUserid());
        List list = sessionFactory.getCurrentSession().createSQLQuery(sql.toString()).list();
        return list;
    }
}

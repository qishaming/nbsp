package com.jk.dao.Impl;

import com.jk.dao.LoginDao;
import com.jk.pojo.GuangGao;
import com.jk.pojo.Merchant;
import com.jk.pojo.User;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class LoginDaoImpl implements LoginDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User querylogin(String username) {
        User user =(User)sessionFactory.getCurrentSession().createQuery(" from  User  as u where u.username='" + username + "'").uniqueResult();
        return user;
    }


    @Override
    public void addzhuces(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public User queryMerchantIdByPhone(String phone) {

        String hql=" from User as u  where u.userphone ='"+phone+"'";

        User user =(User) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return user;
    }

    @Override
    public void addMerchant(Merchant merchant) {
        sessionFactory.getCurrentSession().saveOrUpdate(merchant);
    }

    @Override
    public void addzhuces1(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public Merchant queryMerchant(Integer userid) {
        Merchant Merchant= (Merchant) sessionFactory.getCurrentSession().createQuery("from Merchant as m where m.userid="+userid).uniqueResult();
        return Merchant;
    }
   //对轮播图的操作=========================================================================================
    @Override
    public List queryGuangGao() {
        String sql="SELECT g.gid AS gid,g.gmid AS gmid,g.gphoto AS gphoto,g.gstate AS gstate,p.merchantName AS merchantName FROM guanggao g,pyg_merchant p WHERE g.gmid=p.merchantId ";
        List list = sessionFactory.getCurrentSession().createSQLQuery(sql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
        return list;
    }

    @Override
    public void updateGuangGao(GuangGao guangGao) {
        String sql="";
       /* *//*if(guangGao.getGstate()==2){
            sql="update guanggao g set g.gstate=1  where g.gid="+guangGao.getGid();
        }else{*//*
            sql="update guanggao g set g.gstate=2  where g.gid="+gid;
        *//*}*//*
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();*/
        sessionFactory.getCurrentSession().saveOrUpdate(guangGao);
    }

    @Override
    public void deleteGuangGao(Integer gid) {
        String sql=" delete from guanggao where gid="+gid;
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
    }

    @Override
    public List queryMerchantName() {
        List list = sessionFactory.getCurrentSession().createQuery(" from Merchant").list();
        return list;
    }

    @Override
    public void addGuangGao(GuangGao guangGao) {
        sessionFactory.getCurrentSession().saveOrUpdate(guangGao);
    }

    @Override
    public GuangGao queryGuangGaoById(Integer gid) {
        /*String sql=" from GuangGao  where gid="+gid;*/
        GuangGao guangGao= sessionFactory.getCurrentSession().get(GuangGao.class,gid);
        return guangGao;
    }
}

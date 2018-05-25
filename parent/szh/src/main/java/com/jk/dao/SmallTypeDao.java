package com.jk.dao;

import com.jk.pojo.SmallType;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface SmallTypeDao {

  List querySmallType();

  void delteSmallType(Integer smallTypeid);

  void addSmallType(SmallType smallType);
}

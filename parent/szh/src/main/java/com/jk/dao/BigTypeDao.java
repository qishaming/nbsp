package com.jk.dao;

import com.jk.pojo.BigType;

import java.util.List;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface BigTypeDao {

  List queryBigType();

  void delteBigType(Integer bigTypeid);

  void addBigType(BigType bigType);
}

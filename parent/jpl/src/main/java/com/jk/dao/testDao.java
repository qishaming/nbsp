package com.jk.dao;

import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;

import java.util.List;

public interface testDao {
    List queryAll();
    List queryRepertory();

    Repertory queryCountById(Integer repertoryId);

    void xiaJiaById(Goods goods);

    void shangJiaById(Goods g);


    void updatedRepertory(Repertory repertory);
}

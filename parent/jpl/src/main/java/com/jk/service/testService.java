package com.jk.service;

import com.jk.pojo.Goods;
import com.jk.pojo.Repertory;
import com.jk.pojo.User;

import java.util.List;

public interface testService {
    List queryAll();

    List queryRepertory(User u);


    Repertory queryCountById(Integer repertoryId);


    void xiaJiaById(Goods goods);

    void shangJiaById(Goods g);


    void updatedRepertory(Repertory repertory);

    List queryRepertoryExcel(User u);
}

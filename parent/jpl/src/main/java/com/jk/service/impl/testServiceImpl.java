package com.jk.service.impl;

import com.jk.dao.testDao;
import com.jk.service.testService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class testServiceImpl implements testService {

    @Autowired
    private testDao dao;


    @Override
    public List queryAll() {
        System.out.print("1111111111111111111111111111111111");
        return dao.queryAll();

    }
}

package com.jk.dao;

import com.jk.pojo.User;

public interface LoginDao {

    User querylogin(String username);
}

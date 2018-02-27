package com.rhinoceros.mall.service.impl.service;

import com.rhinoceros.mall.core.pojo.User;
import com.rhinoceros.mall.dao.dao.UserDao;
import com.rhinoceros.mall.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public List<User> findAll() {
        return userDao.select();
    }
}

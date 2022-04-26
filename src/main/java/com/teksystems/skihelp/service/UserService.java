package com.teksystems.skihelp.service;


import com.teksystems.skihelp.database.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserDAO userDao;


}
package com.teksystems.skihelp.controller;

import com.teksystems.skihelp.database.dao.UserDAO;
import com.teksystems.skihelp.database.dao.UserRoleDAO;
import com.teksystems.skihelp.database.entity.User;
import com.teksystems.skihelp.formbean.RegisterFormBean;
import com.teksystems.skihelp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class ProfileController {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserRoleDAO userRoleDao;

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;



    @RequestMapping(value = "/profile/{email}", method = RequestMethod.GET)
    public ModelAndView profile(@PathVariable("email") String email)throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/profile");

        RegisterFormBean form = new RegisterFormBean();


        User user = userDao.findByEmail(email);

        response.addObject("firstName", user.getFirstName());
        response.addObject("lastName", user.getLastName());
        response.addObject("phone", user.getPhone());
        response.addObject("address", user.getAddress());
        response.addObject("email", user.getEmail());

        return response;
    }
}

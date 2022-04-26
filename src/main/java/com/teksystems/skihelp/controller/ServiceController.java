package com.teksystems.skihelp.controller;



import com.teksystems.skihelp.database.dao.ServicesDAO;
import com.teksystems.skihelp.database.entity.Services;
import com.teksystems.skihelp.formbean.ServiceFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;
@Slf4j
@Controller
public class ServiceController {

    @Autowired
    private ServicesDAO serviceDao;

    @RequestMapping(value = "/service", method = RequestMethod.GET)
    public ModelAndView service() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("service");
        //Safety lines for JSP page substitution error
        ServiceFormBean form = new ServiceFormBean();
        response.addObject("formBean", form);
        return response;
    }

    @RequestMapping(value="/services", method = RequestMethod.GET)
    public ModelAndView showServices() throws Exception{
        ModelAndView response = new ModelAndView();
        response.setViewName("service");
        List<Services> serviceKey = serviceDao.findAll();

        for (Services service: serviceKey) {
            log.info(service.toString());
        }

        response.addObject("serviceKey", serviceKey);
        return response;
    }

}
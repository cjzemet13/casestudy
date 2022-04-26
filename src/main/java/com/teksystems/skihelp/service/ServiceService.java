package com.teksystems.skihelp.service;



import com.teksystems.skihelp.database.dao.ServicesDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceService {

    @Autowired
    private ServicesDAO servicesDao;
}
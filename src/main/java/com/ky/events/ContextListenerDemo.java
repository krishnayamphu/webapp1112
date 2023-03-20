package com.ky.events;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebListener
public class ContextListenerDemo implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("application started successfully.");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("application un-deployed successfully");
    }
}

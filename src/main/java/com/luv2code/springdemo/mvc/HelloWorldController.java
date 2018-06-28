package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.HttpServletBean;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by asus on 6/26/2018.
 */
@Controller
public class HelloWorldController {

    //need a controller method to show initial HTML Form
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    //new controller method to read form data and
    //add data to the model
    @RequestMapping("/processFormVersion2")
    public String letsShoutDude(HttpServletRequest request, Model model){
        String theName = request.getParameter("studentName");
        String result = "Hello there! "+theName;
        model.addAttribute("message",result);
        return "helloworld";
    }
}

package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by asus on 6/28/2018.
 */

@Controller
@RequestMapping("sillyController")
public class sillyController {

    @RequestMapping("/showForm")
    public String displayForm(){
        return "silly";
    }
}

package org.solent.devops.user.spring.map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PageController {

    @RequestMapping("/")
    public String homePage(){
        return "index";
    }
    
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    
    @RequestMapping("/map")
    public String mapPage(){
        return "map";
    }
        
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    
    @RequestMapping("/createAccount")
    public String createAccountPage(){
        return "createAccount";
    }
    
    @RequestMapping("/about")
    public String aboutPage(){
        return "about";
    }
    
    @RequestMapping("/contact")
    public String contactPage(){
        return "contact";
    }
    
    @RequestMapping("/newPoint")
    public String newPoint(){
        return "newPoint";
    }


    
}

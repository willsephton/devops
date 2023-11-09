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
    public String loginPage(){
        return "login";
    }
    
    @RequestMapping("/loginConf")
    public String loginConfPage(){
        return "loginConf";
    }
    
    @RequestMapping("/createAccount")
    public String createAccountPage(){
        return "createAccount";
    }
    
<<<<<<< HEAD:src/main/java/org/solent/spring/map/controller/PageController.java
    @RequestMapping("/createAccountDetails")
    public String createAccountDetailsPage(){
        return "createAccountDetails";
    }
    
    @RequestMapping("/createAccountConf")
    public String createAccountConfPage(){
        return "createAccountConf";
=======
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
>>>>>>> cab85bf7d0b6a7d66f2896fc1e0016d4d93d754f:src/main/java/org/solent/devops/user/spring/map/controller/PageController.java
    }


    
}

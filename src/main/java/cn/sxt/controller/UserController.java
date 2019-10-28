package cn.sxt.controller;

import cn.sxt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("userController")
public class UserController {
    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/list")
    public String list(ModelMap modelMap) {
        modelMap.addAttribute("list", userService.list());
        return "forward:/list.jsp";
    }
}

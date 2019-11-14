package cn.controller;


import cn.entity.User;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/list")
    public String list(Model model){
        model.addAttribute("userlist",userService.findListUser());
        return "main";
    }

    @RequestMapping(value = "/add")
    public String add(){
        return "edit";
    }

    @RequestMapping(value = "update")
    public String update(Model model, @RequestParam Integer id){
        model.addAttribute("user",userService.findUserById(id));
        return "edit";
    }

    @RequestMapping(value = "/doedit")
    public String doedit(@ModelAttribute User user){
        if(user.getId()!=null)
            userService.modifyUser(user);
        else
            userService.addUser(user);
        return "redirect:/list";
    }

    @RequestMapping(value = "deleteUser")
    @ResponseBody
    public String deleteUser(@RequestParam Integer id){
        userService.removeUser(id);
        return "";
    }

}

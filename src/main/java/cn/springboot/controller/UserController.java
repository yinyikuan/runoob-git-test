package cn.springboot.controller;

import cn.springboot.entity.User;
import cn.springboot.serivce.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/list")
    public String list(Model model) {
        model.addAttribute("userlist", userService.findListUser(null));
        return "main";
    }


    @RequestMapping(value = "/add")
    public String add() {
        return "edit";
    }

    @RequestMapping(value = "/update")
    public String update(@RequestParam Integer id, Model model) {
        model.addAttribute("user", userService.findUserById(id));
        return "edit";
    }


    @RequestMapping(value = "/deleteUser")
    @ResponseBody
    public String deleteUser(@RequestParam Integer id) {
        userService.removeUser(id);
        return "";
    }

    @RequestMapping(value = "/doedit")
    public String doedit(@ModelAttribute User user) {
        if (user.getId() != null)
            userService.modifyUser(user);
        else
            userService.addUser(user);
        return "redirect:/list";
    }
}

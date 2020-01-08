package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import joptsimple.internal.Rows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    HttpServletRequest request;

    @RequestMapping("insert")
    public String insert(User user,String oper){
        userService.insert(user);
        return "redirect:/dept/list";
    }

    @ResponseBody
    @RequestMapping("query")
    public Map<String ,Object> query(Integer page, Integer rows){
        Map<String, Object> queryall = userService.queryall(page, rows);
        return queryall;
    }

    @RequestMapping("delete")
    public String delete(User user){
        userService.deletebyid(user.getId());
        return "redirect:/dept/list";
    }
    @RequestMapping("update")
    public String update(User user){
        System.out.println(user.getId());

        return "redirect:/dept/list";
    }
    @ResponseBody
    @RequestMapping("edit")
    public void edit(User user,String oper){
        if(oper.equals("add")){
            userService.insert(user);
        }else if(oper.equals("del")){
                    userService.deletebyid(user.getId());
        }else{
            userService.update(user);
        }
    }
}

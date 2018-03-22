package cn.foolish.dubbo.consumer.controller;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cn.foolish.dubbo.api.service.IDubboService;
import cn.foolish.dubbo.api.vo.UserInfo;

@RestController
public class DubboController {

	@Resource
    private IDubboService userService;

	@GetMapping("/getUserById/{id}")
    public UserInfo getUser(@PathVariable("id") Long userId){
        return userService.getUserInfo(userId);
    }
    
    @RequestMapping("/getUsers")
    @ResponseBody
    public UserInfo getUsers(){
        return userService.getUserInfo(1L);
    }
}

package com.galaxy.controller;

import com.galaxy.pojo.Result;
import com.galaxy.service.Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class UserController {
    @Autowired
    private Service service;
    @PostMapping("/user/register")
    public Result register(String username,String password){
        if(service.selectByUsername(username) == null){
            service.register(username,password);
            return Result.success();
        }else {
            return Result.error("注册失败");
        }

    }
    @PostMapping("/user/login")
    public Result login(String username,String password){
        String token = service.login(username,password);
        return Result.success(token);
    }
}

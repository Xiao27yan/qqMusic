package com.galaxy.controller;

import com.galaxy.pojo.MusicMsg;
import com.galaxy.pojo.Result;
import com.galaxy.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MusicController {
    @Autowired
    private Service service;
    @GetMapping("api/getMusicMsgList")
    public Result getMusicMsgList(){
        List<MusicMsg> result = service.getMusicMsgList();
        return Result.success(result);
    }
    @PostMapping("api/getMusicByKeyWords")
    public Result getMusicByKeyWords(MusicMsg keyWords){
        MusicMsg result = service.getMusicByKeyWords(keyWords);
        return Result.success(result);
    }
}

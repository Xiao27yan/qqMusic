package com.galaxy.service;

import com.galaxy.mapper.Mapper;
import com.galaxy.pojo.MusicMsg;
import com.galaxy.pojo.User;
import com.galaxy.utils.JWT;
import com.galaxy.utils.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceImpl implements com.galaxy.service.Service {
    @Autowired
    private Mapper mapper;
    @Override
    public void register(String username, String password) {
        String result = Md5Util.getMD5String(password);
        mapper.register(username,result);
    }
    @Override
    public String login(String username, String password) {
       User result = selectByUsername(username);
        if(result == null){
         return "该用户名不存在";
        }else if(Md5Util.getMD5String(password).equals(result.getPassword())){
            String token = JWT.generateToken(username);
            return token;
        }
        else {
            return "登录失败";
        }
    }

    @Override
    public User selectByUsername(String username) {
        return mapper.selectByUsername(username);
    }

    @Override
    public List<MusicMsg> getMusicMsgList() {
        return mapper.getMusicMsgList();
    }

    @Override
    public MusicMsg getMusicByKeyWords(MusicMsg keyWords) {
        return mapper.getMusicByKeyWords(keyWords);
    }
}

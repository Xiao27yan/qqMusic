package com.galaxy.service;

import com.galaxy.pojo.MusicMsg;
import com.galaxy.pojo.User;

import java.util.List;

@org.springframework.stereotype.Service
public interface Service {
    void register(String username, String password);

    String login(String username, String password);

    User selectByUsername(String username);

    List<MusicMsg> getMusicMsgList();

    MusicMsg getMusicByKeyWords(MusicMsg keyWords);
}

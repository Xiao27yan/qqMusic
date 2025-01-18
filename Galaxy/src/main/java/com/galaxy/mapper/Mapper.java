package com.galaxy.mapper;

import com.galaxy.pojo.MusicMsg;
import com.galaxy.pojo.User;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
    void register(String username, String password);

    User selectByUsername(String username);

    List<MusicMsg> getMusicMsgList();

    MusicMsg getMusicByKeyWords(MusicMsg keyWords);
}

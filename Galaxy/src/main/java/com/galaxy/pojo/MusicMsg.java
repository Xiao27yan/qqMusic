package com.galaxy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
public class MusicMsg {
    private int id;
    private String singerName;
    private String musicName;
    private String introduction;

}

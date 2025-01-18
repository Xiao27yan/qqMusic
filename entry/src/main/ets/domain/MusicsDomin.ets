export class Music{
  index:number
  singerName:string
  musicName:string
  introduction:string

  constructor(index:number
  ,singerName:string
  ,musicName:string
  ,introduction:string) {

    this.index = index
    this.singerName = singerName
    this.musicName = musicName
    this.introduction = introduction

  }
}

export const HotMusicList: Music[] = [
  new Music(0, '周杰伦', '稻香', '这是一首经典的周杰伦歌曲。'),
  new Music(1, '张学友', '吻别', '这是张学友的代表作之一。'),
  new Music(2, '林俊杰', '江南', '林俊杰的江南风格独特迷人。'),
  new Music(3, '王菲', '传奇', '王菲的传奇依旧流传。'),
  new Music(4, '邓紫棋', '光年之外', '邓紫棋的音乐时常超越时空。'),
];

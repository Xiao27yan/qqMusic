export class HotMusic{
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
export class Music {
  index: number;
  name: string;
  singer:string;
  url: string;
  imageUrl: string;
  introduction:string

  constructor(index: number, name: string,singer:string,introduction:string, url: string, imageUrl: string) {
    this.index = index;
    this.name = name;
    this.introduction = introduction;
    this.url = url;
    this.imageUrl = imageUrl;
    this.singer = singer
  }
}

export  const musicList:Music[] = [
  new Music(
      0,
    '稻香',
    '周杰伦',
    '故事的小黄花',
    'https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/Akie%E7%A7%8B%E7%BB%98%20-%20%E8%87%B4%E5%B7%9D%E6%B5%81%E7%9A%84%E6%97%A0%E5%90%8D%E8%AF%97.mp3',
    'https://xiaojiaxiaoyan.oss-cn-hangzhou.aliyuncs.com/musicImage/huahai.jpg'),
  new Music(
    1,
    "致川流的无名诗",
    "Akie秋绘",
    "介绍",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/Akie%E7%A7%8B%E7%BB%98%20-%20%E8%87%B4%E5%B7%9D%E6%B5%81%E7%9A%84%E6%97%A0%E5%90%8D%E8%AF%97.mp3",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E8%87%B4%E5%B7%9D%E6%B5%81%E7%9A%84%E6%97%A0%E5%90%8D%E8%AF%97.jpg"
  ),
  new Music(
    2,
    "恋之虫",
    "花たん",
    "介绍",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E8%8A%B1%E3%81%9F%E3%82%93%20-%20%E6%81%8B%E3%83%8E%E8%9F%B2.mp3",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E6%81%8B%E4%B9%8B%E8%99%AB.jpg"
  ),
  new Music(
    3,
    "Albemuth - 新世界",
    "明透",
    "介绍",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/Albemuth%20-%20%E6%96%B0%E4%B8%96%E7%95%8C%E3%81%B8.mp3",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E6%96%B0%E4%B8%96%E7%95%8C.jpg"
  ),
  new Music(
    4,
    "世末歌者",
    "双笙（陈元汐） 封茗囧菌 - 世末歌者（Cover 乐正绫）",
    "介绍",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E5%8F%8C%E7%AC%99%EF%BC%88%E9%99%88%E5%85%83%E6%B1%90%EF%BC%89%20%E5%B0%81%E8%8C%97%E5%9B%A7%E8%8F%8C%20-%20%E4%B8%96%E6%9C%AB%E6%AD%8C%E8%80%85%EF%BC%88Cover%20%E4%B9%90%E6%AD%A3%E7%BB%AB%EF%BC%89.mp3",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E4%B8%96%E6%9C%AB%E6%AD%8C%E8%80%85.jpg"
  ),
  new Music(
    5,
    "星と君が消えた日.mp3",
    "泠鸢yousa",
    "介绍",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E6%B3%A0%E9%B8%A2yousa%20-%20%E6%98%9F%E3%81%A8%E5%90%9B%E3%81%8C%E6%B6%88%E3%81%88%E3%81%9F%E6%97%A5.mp3",
    "https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/MUSIC/%E6%98%9F%E4%B8%8E%E4%BD%A0%E6%B6%88%E5%A4%B1%E4%B9%8B%E6%97%A5.jpg"
  )

]


export const HotMusicList: HotMusic[] = [
  new HotMusic(0, '周杰伦', '稻香', '这是一首经典的周杰伦歌曲。'),
  new HotMusic(1, '张学友', '吻别', '这是张学友的代表作之一。'),
  new HotMusic(2, '林俊杰', '江南', '林俊杰的江南风格独特迷人。'),
  new HotMusic(3, '王菲', '传奇', '王菲的传奇依旧流传。'),
  new HotMusic(4, '邓紫棋', '光年之外', '邓紫棋的音乐时常超越时空。'),
];

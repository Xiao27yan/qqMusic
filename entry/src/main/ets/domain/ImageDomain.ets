export class ImageDomin{
  index:number
  name:string
  url:Resource

  constructor(index:number,name:string,url:Resource) {
    this.index = index
    this.name = name
    this.url = url
  }


}

export const ImageList:ImageDomin[] = [
  new ImageDomin(0,'青椒',$r('app.media.qingjiao')),
  new ImageDomin(1,'香菇',$r('app.media.xianggu')),
  new ImageDomin(2,'洋葱',$r('app.media.yangcong')),
  new ImageDomin(3,'玉米',$r('app.media.yumi')),
  new ImageDomin(4,'生姜',$r('app.media.shengjiang')),
  new ImageDomin(5,'玉兔',$r('app.media.yutu')),
  new ImageDomin(6,'常娥',$r('app.media.changee')),
  new ImageDomin(7,'灯',$r('app.media.deng')),
new ImageDomin(8,'宫殿',$r('app.media.gongdian')),
new ImageDomin(9,'礼盒',$r('app.media.lihe')),
new ImageDomin(10,'女孩',$r('app.media.nanhai')),
new ImageDomin(11,'玉兔',$r('app.media.yutu')),
new ImageDomin(12,'音乐',$r('app.media.music')),
new ImageDomin(13,'打赏',$r('app.media.money'))
]
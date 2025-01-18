import {Music,HotMusicList} from '../domain/MusicsDomin'
@Entry
@Component
struct searchBox{
  @Builder
  qwq(){
    Row(){
      Image($r('app.media.xianggu')).width(20).margin({left:20})
      Swiper(){
        ForEach(HotMusicList,(item:Music)=>{
          Text(item.musicName+':'+item.introduction).fontColor(Color.White).fontSize(10)

        })
      }
      .margin({left:5})
      .width('80%')
      .loop(true)
      .autoPlay(true)
      .vertical(true)

      .indicator(Indicator.dot()
        .itemWidth(15)
        .itemHeight(15)
        .selectedItemWidth(15)
        .selectedItemHeight(15)
        .color('#00000000')
        .selectedColor('#00000000'))

    }
  }
  build() {
    Row(){

     Stack(){
       TextInput().width('100%').opacity(0.5)
       this.qwq()
       Text('正在热搜').fontSize(10).margin({left:150}).fontColor(Color.Gray)

     }

    }
    .height(50)
   .width('80%')


  }
}

export { searchBox }

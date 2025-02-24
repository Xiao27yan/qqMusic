import {ImageList,ImageDomin} from '../domain/ImageDomain'
import { Music, musicList } from '../domain/MusicsDomin'

@Entry
@Component
  struct scrollMusic{
  @StorageLink ('isPlay')  isPlay:boolean = false
  build() {
    Column(){
      Row(){
        Row(){
          Image($r('app.media.XiaoYan')).width(30).borderRadius('50')
          Text('qwq').fontColor(Color.White)
        }

        Row(){
          Text('查看我的音乐DNA').fontColor(Color.White)
          Image($r("app.media.right1")).width(20)
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')


      Scroll(){
          Row(){
            ForEach(musicList,(item:Music)=>{
              Row(){
                Column(){
                  Text(item.name).fontSize(20).margin({top:15})
                  Text(item.singer).fontSize(10)
                  Image($r('app.media.fill')).width(50).margin({top:10})

                }.height('100%').width('40%')
                Image(item.imageUrl)
                  .width(100).margin({left:5})
                  .height(100)
                  .margin({right:10})
                  .borderRadius('5%')
              }
              .onClick(()=>{
                AppStorage.set('playIndex',item.index)

              })
              .margin({left:10})
              .borderRadius('3%')
              .height(130)

              .backgroundColor('#FFB8D2E5')
              .justifyContent(FlexAlign.SpaceBetween)
            })
          }
      }
      .scrollable(ScrollDirection.Horizontal)



    }
    .alignItems(HorizontalAlign.Start)
    .height(130)
    .width('95%')

  }
}

export {scrollMusic}
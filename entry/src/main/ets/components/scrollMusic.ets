import {ImageList,ImageDomin} from '../domain/ImageDomain'
@Entry
@Component
struct scrollMusic{



  build() {
    Column(){
      Row(){
        Row(){
          Image($r('app.media.XiaoYan')).width(30).borderRadius('50').margin({left:10})
          Text('qwq').fontColor(Color.White)
        }

        Row(){
          Text('查看我的音乐DNA').fontColor(Color.White)
          Image($r('app.media.right')).width(20)
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')


      Scroll(){
          Row(){
            ForEach(ImageList,(item:ImageDomin)=>{Image(item.url).width(100).margin({left:5})})
          }
      }
      .scrollable(ScrollDirection.Horizontal)



    }
    .alignItems(HorizontalAlign.Start)
    .height(130)
    .width('100%')

  }
}

export {scrollMusic}
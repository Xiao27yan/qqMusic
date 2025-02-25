import { scrollMusic } from '../../components/scrollMusic'
import {searchBox} from '../../components/searchBox'
import {selectedSongs}from '../../components/selectedSongs'
@Entry
@Component
struct recommend{
  build() {
    Column(){
     Row(){
       searchBox()
       Image($r('app.media.money')).width(40)
       Image($r('app.media.music')).width(40)

     }
      scrollMusic().width('100%')
      selectedSongs().height('50%').width('100%')

    }
    .alignItems(HorizontalAlign.Center)
    .width('95%')
    .height('100%')

  }
}

export {recommend}
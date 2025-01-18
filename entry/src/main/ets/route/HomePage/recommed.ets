import { scrollMusic } from '../../components/scrollMusic'
import {searchBox} from '../../components/searchBox'
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
      scrollMusic()

    }
    .width('100%')
    .height('100%')

  }
}

export {recommend}
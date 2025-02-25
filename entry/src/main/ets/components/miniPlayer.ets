import {musicList} from '../domain/MusicsDomin'
@Component
export struct miniPlayer{


  @State start: number = 0
  @StorageLink ('isPlay') @Watch('rotateImg') isPlay:boolean = false
  @StorageLink ('name') name:string = 'qwq'
  @StorageLink('singer') singer:string='ovo'
  @StorageLink('img') img:Resource=$r('app.media.XiaoYan')
  @StorageLink('progress') progress:number=0
  @StorageLink('playIndex') playIndex:number=3
  @State intervalNumber: number = 0


  rotateImg() {
    clearInterval(this.intervalNumber)
    console.log('isPlay', this.isPlay)
    if (this.isPlay) {
      this.intervalNumber = setInterval(() => {
        this.start += 5
        if (this.start > 360) {
          this.start = 0
        }
      }, 100)
    } else {
      clearInterval(this.intervalNumber)
      this.start = 0
    }
  }

  build() {
    Column(){

      Row(){
        Stack(){
          Slider({
            value: this.progress, // 当前滑块值
            min: 0,
            max: 100,
          }).onChange((value) => {
            AppStorage.set('qwq',value)

          })
          Progress({value:this.progress})
            .height(2)
            .backgroundColor(Color.Black)
            .width('100%')

        }

      }

      Row(){

        Row(){
          Image((musicList[this.playIndex].imageUrl))
            .width(40)
            .height(40)
            .borderRadius(50)
            .margin({ left: 10 })
            .rotate({
              x: 0,
              y: 0,
              z: 1,
              angle: this.start
            }).width('10%').backgroundColor(Color.Black)

          Column(){
            Text(musicList[this.playIndex].name)
              .fontSize(14)
              .fontWeight(600)
            Text(musicList[this.playIndex].singer).constraintSize({ maxWidth: 100 }).maxLines(1)
          }


        }

Row(){
  Text(musicList[this.playIndex].introduction).fontColor(Color.Pink)
}
        Row(){
          Image($r('app.media.left')).width('10%')
            .onClick(()=>{
              this.playIndex--
              if(this.playIndex<0){
                this.playIndex=musicList.length-1
              }
            })
          Image(this.isPlay?$r('app.media.paused'):$r('app.media.fill'))
            .onClick(
              () => {
                this.isPlay = !this.isPlay
              }
            )
            .width('10%')
          Image($r("app.media.right1")).width('10%')
            .onClick(()=>{
              this.playIndex++
              this.playIndex = this.playIndex%musicList.length
            })
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)



    }
  }
}
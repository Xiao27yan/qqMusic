import { Music, musicList } from '../domain/MusicsDomin'

@Component
struct selectedSongs{
  @State musicList:Music[] = musicList

  @StorageLink('playIndex') playIndex:number=3

  aboutToAppear(): void {
    this.musicList = musicList
  }


  build() {
    Column(){
      List(){
        ForEach(this.musicList,(item:Music,index)=>{
          ListItem(){
            Row(){
              Flex(){
                Image(item.imageUrl).width('100').margin({top:'10'})
                  .onClick(()=>{
                    this.playIndex = index
                  })
                Column(){
                  Text(item.name).fontSize(20).fontWeight(500).textOverflow({overflow:TextOverflow.Ellipsis}).maxLines(1)
                  Text(item.singer).fontSize(15).fontWeight(400).textOverflow({overflow:TextOverflow.Ellipsis}) .constraintSize({ maxWidth: 100 }).maxLines(1)
                    .maxLines(1)
                }.flexGrow(1).justifyContent(FlexAlign.Center).height('100%').alignItems(HorizontalAlign.Start).margin({left:'10'})
                Image(item.isStar?$r('app.media.starfill'):$r('app.media.star')).height(30).margin({top:'30'})
                  .onClick(()=>{
                    this.musicList[index].isStar = !this.musicList[index].isStar
                    console.log('已经改变'+item.isStar)
                  })
              }

            }.width('100%').height(100).alignItems(VerticalAlign.Center)
          }.margin({top:'10'}).borderRadius('5%')
        })

      }
    }
  }
}

export { selectedSongs }

import { allListData } from "../../data/allListData";
import  Music  from "../../model/music";
import Option from '../../model/option';
import { MyDataSource } from '../../data/MyDataSource';

@Component
export struct CollectSongSheet{
  @State message: string = '这是收藏歌单';
  @StorageLink('allListData') songList: Array<Music> = allListData.getAllListInstance().getAllSongsListData()
  @StorageLink ("songsUserOptionList") optionList: Array<Option> = allListData.getAllListInstance().getUserOptionList()
  @State songName: string = ''
  @State isShowSheet: boolean = false

  @Builder
  SheetBuilder() {
    Flex({direction: FlexDirection.Column}){
      ForEach(this.optionList,(item:Option)=>{
        Row(){
          Image(item.optionIcon).height(25).width(25)
          Text(item.optionName).margin({left:10})
        }.padding(10).justifyContent(FlexAlign.Start).width('100%').onClick(()=>{
          this.optionByChoose(item.optionName,this.songName)
        })
      })
    }
  }
  optionByChoose(option:string,songName:string){
    switch(option){
      case '置顶':
        console.log(option,songName)
        break
      case '收藏':
        this.songList.forEach((item:Music)=>{
          if(item.name == songName){
            item.isCollectFlag = false
          }
        })
        break
    }
  }
  build() {
    Flex({direction: FlexDirection.Column}){
      Column(){
        Image($r('app.media.index')).width(100).height(100).backgroundColor(Color.Pink)
        Text(this.message).fontSize(20).margin({top:10})
      }.padding(10).justifyContent(FlexAlign.Center).width('100%').backgroundColor('#4e4e4e')
      ForEach(this.songList,(item:Music)=>{
          if(item?.isCollectFlag){
            Flex({direction: FlexDirection.Row,justifyContent: FlexAlign.SpaceBetween}){
              Image(item.songImage).width(50).height(50)
              Column(){
                Text(item.name).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1).width(200).height(25).fontSize(15).fontColor(Color.White)
                Text(item.singer).textOverflow({ overflow: TextOverflow.Ellipsis }) .maxLines(1).width(200).height(25).fontSize(15).fontColor(Color.White)
              }.justifyContent(FlexAlign.Start).margin({left:-50})
              Image($r('app.media.dots')).width(25).height(30).margin({top:10}).onClick(()=>{
                this.songName = item.name
                this.isShowSheet = true
              })
                .bindSheet($$this.isShowSheet, this.SheetBuilder(), {
                  detents: [SheetSize.MEDIUM, SheetSize.LARGE, 600],
                  preferType: SheetType.BOTTOM,
                  title: { title: this.songName },
                })
            }
          }
      },(item:Music) => item.id + item.toString())



    }
  }
}
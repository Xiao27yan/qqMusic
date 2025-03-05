import Item from "../model/Item"
import { itemList } from "../model/itemList"
import UserMessage from "../model/UserMessage"

@Component
export struct Mine_Main{
  @StorageProp("currentUserMessage") currentUserMessage:UserMessage = new UserMessage()
  private userMessage:UserMessage = new UserMessage()
  @State userFeatureOptionList:Item[] = new itemList().getCurrentItemList('user_feature_option')
  @State userOptionList:Item[] = new itemList().getCurrentItemList('user_foundation_option')
  aboutToAppear(): void {
    this.userMessage.getUserMessage()
  }
  switchRecentMusic(): void {
    console.log('跳转最近播放')
  }
  build() {
    Row() {
    Column() {
      Flex({ direction: FlexDirection.Row, alignContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
        Image(this.currentUserMessage.userImage[0]).objectFit(ImageFit.Cover).width("25%").border({
          radius: 100
        })
        Column() {
          Text(this.currentUserMessage.username).fontSize(20)
          Text(this.currentUserMessage.username).fontSize(20)
        }.width("50%").justifyContent(FlexAlign.SpaceBetween)

        Text('嘻嘻').width("25%")
      }.height('15%').backgroundColor("#3c3f41")

      Row() {
        ForEach(this.userFeatureOptionList, (item: Item) => {
          Row() {
            Image(item.image).height(30).width(30)
            Text(item.content)
          }.width("25%")
        })
      }.height("30").backgroundColor("#3c3f41")
      Row() {
        ForEach(this.userOptionList, (item: Item) => {
          Column() {
            Image(item.image).height(30).width(30)
            Text(item.content)
            Text(item.current_number.toString())
          }.width("25%")
          .margin({ top: 10 })
          .onClick(() => {
            item.currentOptionByIndex(item.content)
          }).backgroundColor("#3c3f41")
        })
      }.height("100")
      Row(){
          Text("最近播放")
          Image($r('app.media.right')).height('30')
      }.height('30').justifyContent(FlexAlign.SpaceBetween).width("100%").backgroundColor("#3c3f41").onClick(()=>{
        this.switchRecentMusic()
      })
    }.padding("10")

    }
  }
}
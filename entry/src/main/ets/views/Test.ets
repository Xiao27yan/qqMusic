import { allListData } from '../data/allListData'
import Music from '../model/music';
@Component
struct Test {
  @State isShowSheet: boolean = false
  private items: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @StorageLink('allListData') songList: Array<Music> = allListData.getAllListInstance().getAllSongsListData()
  @Builder
  SheetBuilder() {
    Column() {
      // 第一步：自定义滚动容器
      List({ space: '10vp' }) {
        ForEach(this.items, (item: number) => {
          ListItem() {
            Text(String(item)).fontSize(16).fontWeight(FontWeight.Bold)
          }.width('90%').height('80vp').backgroundColor('#ff53ecd9').borderRadius(10)
        })
      }
      .alignListItem(ListItemAlign.Center)
      .margin({ top: '10vp' })
      .width('100%')
      .height('900px')
      // 第二步：设置滚动组件的嵌套滚动属性
      .nestedScroll({
        scrollForward: NestedScrollMode.PARENT_FIRST,
        scrollBackward: NestedScrollMode.SELF_FIRST,
      })

      Text("非滚动区域")
        .width('100%')
        .backgroundColor(Color.Gray)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .align(Alignment.Top)
    }.width('100%').height('100%')
  }

  build() {
    Column() {
      ForEach(this.songList, (item: Music) => {
        Text(item.name)
      })
    }.width('100%').height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

export {  Test };

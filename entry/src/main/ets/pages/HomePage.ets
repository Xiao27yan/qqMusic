
import {ImageList,ImageDomin} from '../domain/ImageDomain'
import {scrollMusic} from  '../components/scrollMusic'
import {recommend} from  '../route/HomePage/recommed'
import { miniPlayer } from '../components/miniPlayer'

@Entry
@Component
struct HomePage{
  @State selectedIndex:number = 0
  controller:TabsController = new TabsController()
  @Builder
  TabBarBuilder(title:string,index:number){
    Column(){
      Text(title)
        .fontSize(this.selectedIndex == index?15:10)
        .fontColor(Color.White)
        .borderStyle(BorderStyle.Solid)

    }

  }

  build() {
      Tabs({barPosition:BarPosition.Start,index:this.selectedIndex,controller:this.controller}){


        TabContent(){
          recommend()
        }.tabBar(this.TabBarBuilder('推荐',0))
        TabContent(){
          Text('首页二')
        }.tabBar(this.TabBarBuilder('乐馆',1))
        TabContent(){
          Text('首页一')
        }.tabBar(this.TabBarBuilder('听书',2))
        TabContent(){
          Text('首页一')
        }.tabBar(this.TabBarBuilder('故事',3))
        TabContent(){
          Text('首页一')
        }.tabBar(this.TabBarBuilder('大奉打更人',4))


      }
      .onChange((index:number)=>{
        this.selectedIndex = index
      })

    .height('100%')
    .width('100%')
  }
}

export { HomePage }

import { ImageList, ImageDomin } from '../domain/ImageDomain';
import { HomePage } from '../pages/HomePage';
import { scrollMusic } from '../components/scrollMusic';
import {miniPlayer} from  '../components/miniPlayer'
@Entry
@Component
struct MainPage {
  @State message: string = 'Hello World';
  @State selectedIndex:number = 0
  controller:TabsController = new TabsController()
  @Builder
  TabBarBuilder(ImageDomin:ImageDomin,title:string,index:number){
    Column(){
      Image(ImageDomin.url).width(40).borderRadius('50')
      Text(title)
        .fontSize(this.selectedIndex == index?15:10)
        .fontColor(Color.White)

    }


  }
  build() {

   Stack(){
       Tabs({barPosition:BarPosition.End,index:this.selectedIndex,controller:this.controller}){

         TabContent(){
           HomePage()
         }.tabBar(this.TabBarBuilder(ImageList[0],'首页',0))
         TabContent(){
           Text('首页二')
         }.tabBar(this.TabBarBuilder(ImageList[1],'直播',1))
         TabContent(){
           Text('首页一')
         }.tabBar(this.TabBarBuilder(ImageList[2],'雷达',2))
         TabContent(){
           Text('首页一')
         }.tabBar(this.TabBarBuilder(ImageList[3],'社区',3))
         TabContent(){
           Text('首页一')
         }.tabBar(this.TabBarBuilder(ImageList[4],'我的',4))



       }
       .onChange((index:number)=>{
         this.selectedIndex = index
       })
       .backgroundColor('#85AF9B')
     miniPlayer().height('10%').margin({top:'150%'})
   }





   }



}

export {MainPage}
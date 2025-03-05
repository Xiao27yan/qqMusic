@Component
export struct Mine_Header{
  @State message:string = '我的'
  private searchController: SearchController = new SearchController()
  @State searchValue:string = ''
  build() {
    Flex({
      direction:FlexDirection.Column
    }){
     Flex({
       alignItems: ItemAlign.Stretch
     }){
       Text(this.message).width('60%').fontSize('20').margin({left:5})
       Image($r('app.media.email')).width('10%').objectFit(ImageFit.Auto).onClick(()=>{

       })
       Image($r('app.media.msg')).width('10%').margin('10').objectFit(ImageFit.Auto)
       Image($r('app.media.setting')).width('10%').objectFit(ImageFit.Auto)
     }
      Row(){
        Search({value:this.searchValue,placeholder:'请输入搜索内容',controller:this.searchController}).cancelButton({style:CancelButtonStyle.CONSTANT})   //设置右侧清除按钮样式、路径、状态
          .searchButton('确定')   //右边按钮
          .onSubmit(()=>{
          })
          .copyOption(CopyOptions.InApp)

      }
    }
  }
}
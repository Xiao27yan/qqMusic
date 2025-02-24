import { MainPage} from '../pages/mainPage'
import { media } from '@kit.MediaKit';
import { fileIo as fs } from '@kit.CoreFileKit';
import { common } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { audio } from '@kit.AudioKit';
import {musicList} from '../domain/MusicsDomin'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  private avPlayer: media.AVPlayer | null = null;
  @StorageLink ('isPlay') @Watch('gotoPlay')  isPlay:boolean = false
  @StorageLink ('name') name:string = 'qwq'
  @StorageLink('singer') singer:string='ovo'
  @StorageLink('img') img:Resource=$r('app.media.XiaoYan')
  @StorageLink('progress') progress:number=100
  @StorageLink('playIndex') @Watch('changeIndex') playIndex:number=3

  setAvplayerCallback(){
    if(this.avPlayer){
      this.avPlayer.on('error',(err)=>{
        console.log(`报错啦,错误代码是${err.code}，报错的内容是${err.message}`)
        console.log('重启avPlayer')
        this.avPlayer?.reset()
      })

      this.avPlayer.on('stateChange',(state)=>{
        switch (state){
          case 'idle':
            console.log('avPlayer创建成功/重启成功~进入闲置状态啦')
            if (this.avPlayer) {
              console.log('现在设置的是'+musicList[this.playIndex].name)
              this.avPlayer.url = musicList[this.playIndex].url
            }
            break
          case 'initialized':
            console.log('avPlayer资源初始化中~');
            this.avPlayer?.prepare()
            console.log('avPlayer准备中')
            break
          case 'prepared':
            console.log('avPlayer准备就绪');
              this.avPlayer?.play()
            console.log('开始播放')
            break
          case 'paused': // pause成功调用后触发该状态机上报
            console.info('AVPlayer state paused called.');
            break;
          case 'completed': // 播放结束后触发该状态机上报
            console.info('AVPlayer state completed called.');
            this.avPlayer?.stop(); //调用播放结束接口
            break;
          case 'stopped': // stop接口成功调用后触发该状态机上报
            console.info('AVPlayer state stopped called.');
            this.avPlayer?.reset(); // 调用reset接口初始化avplayer状态
            break;
          case 'released':
            console.info('AVPlayer state released called.');
            break;
          default:
            console.info('AVPlayer state unknown called.');
            break;
        }
      })
    }


}

  async aboutToAppear(): Promise<void> {
  try {
    this.avPlayer = await media.createAVPlayer();
    this.setAvplayerCallback()
  }catch (err){
    console.log('创建avPlayer实例的时候报错啦错误'+err);
  }
}
  changeIndex() {
      if (this.avPlayer) {
        this.avPlayer.reset()
        this.isPlay = true
        console.log('播放完成')
    }

  }

  gotoPlay(){
    if(this.isPlay){
      if (this.avPlayer) {
        if (this.avPlayer.url == '' ||this.avPlayer.url==null ||this.avPlayer.url == undefined) {
          console.log('播放音乐'+musicList[this.playIndex].url)
          this.avPlayer.url = musicList[this.playIndex].url
        }else {
          this.avPlayer.play()
        }
      }
    }else if(!this.isPlay){
      if (this.avPlayer) {
        this.avPlayer.pause()
      }
    }



  }
  build() {
    Column(){
      MainPage()
    }
    .height(
      '100%'
    )
    .width(
      '100%'
    )
  }


}
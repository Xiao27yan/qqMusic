import Music from "./music"

export default class playList {
  songList: Array<Music> = []
  private _playListId: number

  public set playListId(value: number) {
    this._playListId = value
  }

  public get playListId(): number {
    return this._playListId
  }

  private _playListName: string

  public set playListName(value: string) {
    this._playListName = value
  }

  public get playListName(): string {
    return this._playListName
  }

  private _playListImg: string

  public set playListImg(value: string) {
    this._playListImg = value
  }

  public get playListImg(): string {
    return this._playListImg
  }

  private _playListIdentify: string

  public set playListIdentify(value: string) {
    this._playListIdentify = value
  }

  public get playListIdentify(): string {
    return this._playListIdentify
  }

  constructor(playListId: number, playListName: string, playListImg: string, playListIdentify: string) {
    this._playListId = playListId
    this._playListName = playListName
    this._playListImg = playListImg
    this._playListIdentify = playListIdentify
  }

  getCurrentSongSheet(flag:string): Array <Music> {
    let resList: Array <Music> = []
    switch (flag) {
      case 'all':
        resList = this.songList
        break
      case 'collect':
        resList = this.songList
        break
      case 'recently':
        resList = this.songList
        break
      default:
        resList = this.songList
        break
    }
    return resList
  }




}
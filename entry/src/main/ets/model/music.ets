export default class Music{
    private _id: number

    public set id(value: number) {
        this._id = value
    }

    public get id(): number {
        return this._id
    }

    private _name: string

    public set name(value: string) {
        this._name = value
    }

    public get name(): string {
        return this._name
    }

    private _singer: string

    public set singer(value: string) {
        this._singer = value
    }

    public get singer(): string {
        return this._singer
    }

    private _introduction: string

    public set introduction(value: string) {
        this._introduction = value
    }

    public get introduction(): string {
        return this._introduction
    }

    private _songResource: string

    public set songResource(value: string) {
        this._songResource = value
    }

    public get songResource(): string {
        return this._songResource
    }

    private _songImage: string

    public set songImage(value: string) {
        this._songImage = value
    }

    public get songImage(): string {
        return this._songImage
    }

    private _isCollectFlag: boolean

    public set isCollectFlag(value: boolean) {
        this._isCollectFlag = value
    }

    public get isCollectFlag(): boolean {
        return this._isCollectFlag
    }
  constructor(id:number,name:string,singer:string,introduction:string,songResource:string,songImage:string,isCollectFlag:boolean=false) {
      this._id = id
      this._name = name
      this._singer = singer
      this._introduction = introduction
      this._songResource = songResource
      this._songImage = songImage
      this._isCollectFlag = isCollectFlag
  }



}
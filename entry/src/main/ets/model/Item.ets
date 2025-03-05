export default class Item{
  private _current_number: number;

  public set current_number(value: number) {
    this._current_number = value;
  }

  public get current_number(): number {
    return this._current_number;
  }

  private _image: Resource;

  public set image(value: Resource) {
    this._image = value;
  }

  public get image(): Resource {
    return this._image;
  }

  private _content: string;

  public set content(value: string) {
    this._content = value;
  }

  public get content(): string {
    return this._content;
  }
  constructor(image: Resource,content: string,current_number:number);
  constructor();
  constructor(image?: Resource, content?: string,current_number?: number)    {
    if (image!== undefined && content!== undefined &&  current_number!== undefined)   {
      this._image = image;
      this._content = content;
      this._current_number = current_number;

    } else {
      // 无参数构造函数的默认值
      this._image = {} as Resource;
      this._content = "";
      this._current_number = 0;


    }
  }
  currentOptionByIndex(content:string){
    switch (content) {
      case "红包":
        console.log('红包')
        break;
      case "会员":
        console.log('会员')
        break;
      case "装扮":
        console.log('装扮')
        break;
      case "日签":
        console.log('日签')
        break;
      case "收藏":
        console.log('收藏')
        break;
      case "本地":
        console.log('本地')
        break;
      case "有声":
        console.log('有声')
        break;
      case "已购":
        console.log('已购')
        break;
    }
  }

}

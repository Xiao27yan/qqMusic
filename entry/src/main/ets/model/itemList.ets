import  Item  from './Item';

export class itemList{
  item:Item
  flag:string
  itemList:Item[]
  constructor(item:Item,  flag:string, itemList?:Item[])
  constructor();
  constructor(item?:Item, flag?: string, itemList?:Item[])  {
    if (item!== undefined && flag!== undefined && itemList!== undefined)  {
      this.item = item;
      this.flag = flag;
      this.itemList = itemList;
    } else {
      // 无参数构造函数的默认值
      this.item = new Item();
      this.flag = "";
      this.itemList = []
    }
  }


  getCurrentItemList(flag:string):Item[]{
    let user_feature_option_list:Item[] = [new Item($r('app.media.money'),"红包",0),new Item($r('app.media.VIP'),"会员",0),new Item($r('app.media.skin'),"装扮",0),new Item($r("app.media.date"),"日签",0)]
    let user_foundation_option_list:Item[] = [new Item($r('app.media.heart'),"收藏",0),new Item($r('app.media.download'),"本地",0),new Item($r('app.media.mic'),"有声",0),new Item($r("app.media.buy"),"已购",0)]
    switch (flag){
      case 'user_feature_option':
        this.itemList = user_feature_option_list
      break;
      case 'user_foundation_option':
        this.itemList = user_foundation_option_list
      break;
      default:
        this.itemList = []
    }
    return this.itemList;
  }


}

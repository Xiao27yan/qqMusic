export default class UserMessage {
  private _id!: number;
  private _username!: string;
  private _password!: string;
  private _userImage!: string[];
  private _userLevel!: string;

  constructor(id: number, username: string, password: string, userImage: string[], userLevel: string);
  constructor();
  constructor(id: number = 0, username: string = '', password: string = '', userImage: string[] = [], userLevel: string = '') {
    this._id = id;
    this._username = username;
    this._password = password;
    this._userImage = userImage;
    this._userLevel = userLevel;
  }

  public set id(value: number) {
    this._id = value;
  }

  public get id(): number {
    return this._id;
  }

  public set username(value: string) {
    this._username = value;
  }

  public get username(): string {
    return this._username;
  }

  public set password(value: string) {
    this._password = value;
  }

  public get password(): string {
    return this._password;
  }

  public set userImage(value: string[]) {
    this._userImage = value;
  }

  public get userImage(): string[] {
    return this._userImage;
  }

  public set userLevel(value: string) {
    this._userLevel = value;
  }

  public get userLevel(): string {
    return this._userLevel;
  }

  public getUserMessageByResource(): boolean {
    return false;
  }

  public getUserMessage() {
    let default_User = new UserMessage(0, "这对cp针不戳", '123456', ['https://oss-java-galaxy.oss-cn-beijing.aliyuncs.com/Image_694346027648200.jpg'], 'S');
    if (!this.getUserMessageByResource()) {
      AppStorage.setOrCreate('currentUserMessage', default_User);
    } else {
      // 这里假设没有资源时使用默认用户信息
      AppStorage.setOrCreate('currentUserMessage', default_User);
    }
  }
}
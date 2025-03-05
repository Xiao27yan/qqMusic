export default class option{
  private _optionName: string

  public set optionName(value: string) {
    this._optionName = value
  }

  public get optionName(): string {
    return this._optionName
  }

  private _optionIcon: Resource

  public set optionIcon(value: Resource) {
    this._optionIcon = value
  }

  public get optionIcon(): Resource {
    return this._optionIcon
  }
    constructor(optionName:string,optionIcon:Resource) {
        this._optionName = optionName
        this._optionIcon = optionIcon
    }

}
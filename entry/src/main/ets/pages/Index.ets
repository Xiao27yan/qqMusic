import { MainPage} from '../pages/mainPage'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

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
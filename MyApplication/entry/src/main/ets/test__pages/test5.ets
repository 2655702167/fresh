import {yemian} from '../test__pages/test4';
import router from '@ohos.router';
import {zizujian} from '../test__pages/test4';
@Entry
@Component
struct mm{
  build(){
    Column(){
      Text('新的一行字')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Divider()

      yemian()

      Divider()

      Text('结束')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

    }
  }
}
import router from '@ohos.router';
@Component
export struct BottomHomePage{
  build() {
    Row() {


      Column(){
        Image($r('app.media.bottomFunction1'))
          .height('50%')
          .width('80%')
      }
      .width('40%')
      .height('100%')


      Column(){
        Image($r('app.media.bottomFunction2'))
          .height('50%')
          .width('80%')
          .onClick(()=>{
            router.pushUrl({
              url:'exam/MyPage'
            })
          })
      }
      .width('60%')
      .height('100%')
    }
    .backgroundColor(Color.White)
    .width('100%')
    .height(70)
  }
}
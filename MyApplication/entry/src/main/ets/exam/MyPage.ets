import router from '@ohos.router';

@Entry
@Component
struct MyPage{
  build()
  {
    Column()
    {
      Image($r('app.media.myPage'))
        .width('100%')
        .height('100%')
        .onClick(()=>{
          router.pushUrl({
            url:'exam/MyCollect'
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}

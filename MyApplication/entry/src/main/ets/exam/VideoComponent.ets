
import router from '@ohos.router';
//@Entry
@Component
export struct VideoComponent{
  build() {
    //一行一行来，一行有两个视频
    Column({space:5}) {
      Row({ space: 5 }) {
        Row() {
          Image($r('app.media.video1'))
            .height('100%')
            .width('100%')
            .onClick(()=>{
              router.pushUrl({
                url:'exam/VideoPage',
                params:{
                  sendMsg:'app.media.videoPage1',
                  sendIndex:1
              }
              })
            })
        }
        .height(200)
        .width('50%')

        Row() {
          Image($r('app.media.video2'))
            .height('100%')
            .width('100%')
            .onClick(()=>{
              router.pushUrl({
                url:'exam/VideoPage',
                params:{
                  sendMsg:'app.media.videoPage2',
                  sendIndex:2
                }
              })
            })
        }
        .height(200)
        .width('50%')
      }
      .width('100%')
      Row({space:5}){
        Row(){
          Image($r('app.media.video3'))
            .height('100%')
            .width('100%')
            .onClick(()=>{
              router.pushUrl({
                url:'exam/VideoPage',
                params:{
                  sendMsg:'app.media.videoPage3',
                  sendIndex:3
                }
              })
            })
        }
        .height(200)
        .width('50%')
        Row(){
          Image($r('app.media.video4'))
            .height('100%')
            .width('100%')
            .onClick(()=>{
              router.pushUrl({
                url:'exam/VideoPage',
                params:{
                  sendMsg:'app.media.videoPage4',
                  sendIndex:4
                }
              })
            })
        }
        .height(200)
        .width('50%')
      }
      .width('100%')
    }
    .margin({ top: '3.00vp', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })
  }
}
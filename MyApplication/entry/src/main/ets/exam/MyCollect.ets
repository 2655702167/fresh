import router from '@ohos.router';
@Entry
@Component
struct MyCollect{
  @State
  changeAngle1:number=0
  @State
  changeAngle2:number=0
  @State
  changeAngle3:number=0
  @State
  space1:number=0
  @State
  space2:number=0
  @State
  space3:number=0
  build()
  {
    Column() {
      Row() {
        Image($r('app.media.myCollectTitle'))
          .width('100%')
          .height(38)
      }


      Row() {
        Text('视频')
          .fontColor(Color.Red)
          .fontSize(15)

      }
      .margin({top:20})
      .width('92%')

      Divider()
        .width(30)
        .alignSelf(ItemAlign.Start)
        .margin({ top: '10.00vp', right: '0.00vp', bottom: '0.00vp', left: '15.00vp' })
        .borderStyle(BorderStyle.Solid)
        .color(Color.Red)
        .height(10)
        .strokeWidth('10.00px')

      Row(){
        Column()
        {
          Image($r('app.media.bottomIcon'))
            .width(25)
            .height(20)
            .rotate({angle:this.changeAngle1})
        }
        Row(){
          Text('默认收藏夹')
            .fontSize(15)
          Text('1')
            .fontSize(10)
            .margin({left:20})
        }
      }
      .width('100%')
      .align(Alignment.Start)
      .height(38)
      .alignSelf(ItemAlign.Start)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: this.space1, left: '10.00vp' })
      .onClick(()=>{
        if(this.changeAngle1==0){
          this.changeAngle1=180
          this.space1=20
        }
        else {
          this.changeAngle1=0
          this.space1=0
        }
      })
      Row(){
        Column()
        {
          Image($r('app.media.bottomIcon'))
            .width(25)
            .height(20)
            .rotate({angle:this.changeAngle2})
        }
        Row(){
          Text('我创建的收藏夹')
            .fontSize(15)
          Text('0')
            .fontSize(10)
            .margin({left:20})
        }
      }
      .width('100%')
      .align(Alignment.Start)
      .height(38)
      .alignSelf(ItemAlign.Start)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: this.space2, left: '10.00vp' })
      .onClick(()=>{
        if(this.changeAngle2==0){
          this.changeAngle2=180
          this.space2=20
        }
        else{
          this.changeAngle2=0
          this.space2=0
        }
      })


      Row(){
        Column()
        {
          Image($r('app.media.bottomIcon'))
            .width(25)
            .height(20)
            .rotate({angle:this.changeAngle3})
        }
        Row(){
          Text('我的收藏与订阅')
            .fontSize(15)
          Text('0')
            .fontSize(10)
            .margin({left:20})
        }
      }
      .width('100%')
      .align(Alignment.Start)
      .height(38)
      .alignSelf(ItemAlign.Start)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: this.space3, left: '10.00vp' })
      .onClick(()=>{
        if(this.changeAngle3==0){
          this.changeAngle3=180
          this.space3=20
        }
        else {
          this.changeAngle3=0
          this.space3=0
        }
      })


    }
    .width('100%')
  }
}
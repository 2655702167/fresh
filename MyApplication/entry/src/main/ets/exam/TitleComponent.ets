//@Entry
@Component
export struct TitleComponent{
  build(){
    //分成一行，但是有好多列
    Row(){
      //先搞头像
      Column(){
        Image($r('app.media.head'))
          .height('100%')
          .width('100%')
      }
      .height(30)
      .width(30)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '20.00vp' })
      //搞搜索框
      Column(){
        Image($r('app.media.searchFrame'))
          .height('100%')
          .width('100%')
      }
      .height(30)
      .width(130)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '20.00vp' })
      //搞英雄联盟s14
      Column(){
        Image($r('app.media.LOL'))
          .height('100%')
          .width('100%')
      }
      .height(30)
      .width(30)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '35.00vp' })
      //搞游戏图标
      Column(){
        Image($r('app.media.gameIcon'))
          .height('100%')
          .width('100%')
      }
      .height(30)
      .width(30)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })
      //搞信息图标
      Column(){
        Image($r('app.media.emailIcon'))
          .height('100%')
          .width('100%')
      }
      .height(30)
      .width(30)
      .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '10.00vp' })
      .alignItems(HorizontalAlign.End)
      .align(Alignment.End)
    }
    .height(40)
    .width('100%')
  }
}
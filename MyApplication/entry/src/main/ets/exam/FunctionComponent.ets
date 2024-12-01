//@Entry
@Component
export struct FunctionComponent{
  build(){
    //主要是一行分类行
    Row({space:15}){
      //直播
      Text('直播')
        .margin({ top: '0.00vp', right: '0.00vp', bottom: '0.00vp', left: '15.00vp' })
      //推荐
      Text('推荐')
        .fontColor(Color.Red)

      //热门
      Text('热门')
      //动画
      Text('动画')
      //影视
      Text('影视')
      //新征程
      Text('新征程')
      //功能符号
      Column(){
        Image($r('app.media.functionMark'))
          .width('100%')
          .height('100%')
      }
      .height(30)
      .width(30)
    }
    .height(40)
    .width('100%')
  }
}
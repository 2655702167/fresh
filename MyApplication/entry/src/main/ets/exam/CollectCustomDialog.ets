
@CustomDialog

export struct CollectCustomDialog{
  controller:CustomDialogController
  cancel ? : ()=>void
  confirm ? : ()=>void
  build(){
    Row(){
      Column() {
        Text('已加入“默认收藏夹”')
          .fontSize(15)
      }
      Column() {
        Text('修改收藏夹')
          .fontSize(15)
      }
      .margin({left:100})

      }
    .width('90%')
    .height('40')
    .margin({bottom:10})
    .borderRadius('7.00vp')
    .backgroundColor(Color.White)

    }

}
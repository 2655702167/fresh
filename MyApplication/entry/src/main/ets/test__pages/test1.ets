@Entry
@Component
struct test1 {
  textValue: string = '陈琳最爱'
  textSize: number = 50
  imageWidth: number = 500
  imageHeight: number = 800

  build() {
    Column() {
      Text(this.textValue)
        .margin({
          top: '0.00vp',
          right: '75.00vp',
          bottom: '0.00vp',
          left: '75.00vp'
        })
        .fontSize(this.textSize)
        .fontWeight(FontWeight.Bold)
      // .width('100%')
      Divider()
      Image("images/5c2bffd8bbc609338a8641042b20edd.jpg")
        .width(this.imageWidth)
        .height(this.imageHeight)
    }
  }
}
@Entry
@Component

struct test2 {
  textvalue: string = 'chenlin'
  textbig: number = 4
  @State textsize : number = 20
  myclick():void{
    this.textsize+=4
  }

  build() {
    Column() {
      Text(this.textvalue)
        .fontSize(this.textsize)
        .fontWeight(FontWeight.Bold)
      Divider()
      Button('增大字体')
        .width(100)
        .height(50)
        // .onClick(this.myclick.bind(this))
        .onClick(() => {
          this.textsize+=4

        })

    }
  }
}
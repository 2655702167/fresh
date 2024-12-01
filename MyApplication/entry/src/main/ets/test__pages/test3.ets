@Component
struct hello{
  @State name:string='陈琳'
  build(){
    Column(){
      Text(`Hello ${this.name}`)
        .fontSize(50)
        .height(100)
        .onClick(()=>{
          this.name='傻逼'
      })
    }
    .width('90%')
  }
}


@Entry
@Component
struct text3{
  build(){
    Column({space:5}){
      hello()
      Divider()
      hello()
    }
  }
}



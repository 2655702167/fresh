import router from '@ohos.router';
@Component
export struct zizujian{
  aboutToAppear(){
    console.info('组件已经被创建')
  }
  aboutToDisappear(){
    console.info('组件已经被摧毁')
  }
  build(){
    Column(){
      Text('Hello World')
        .fontSize(50)
        .height(100)
    }
  }
}
@Entry
@Component
export struct yemian{
  @State iszizujian:boolean=true
  @State bottonValue:string = '删除子组件'
  aboutToAppear(){
    console.info('页面已经被创建')
  }
  aboutToDisapper(){
    console.info('页面已经被摧毁')
  }
  onPageShow(){
    console.info('页面已经显示')
  }
  onPageHide(){
    console.info('页面已经隐藏')
  }
  onBackPress(){
    console.info('返回按钮被点击')
  }
  build(){
    Column({space:5}){
      Text('我的第一个UI界面')
        .fontSize(50)
        .height(100)
      Column() {
        if (this.iszizujian) {
          zizujian()
        }
      }
      .height(100)
      Button(this.bottonValue)
        .onClick(()=>{
          if(this.iszizujian==true){
            this.iszizujian=false;
          }
          else{
            this.iszizujian=true;
          }
          if(this.bottonValue=='删除子组件'){
            this.bottonValue='子组件载入';
          }
          else{
            this.bottonValue='删除子组件';
          }
        })
      Button('跳转到新页面')
        .onClick(()=>{
          router.pushUrl({url:'pages/Index'})
        })
    }
  }
}
import router from '@ohos.router';
import {CollectCustomDialog} from './CollectCustomDialog';
// import DataPreferences from '@ohos.data.preferences';
// import promptAction from '@ohos.promptAction';
// import featureAbility from '@ohos.ability.featureAbility';
import { preferencesUtil, PreferencesUtil} from './PreferencesUtil'
import preferences from '@ohos.data.preferences'



@Entry
@Component
struct VideoPage1{


  async aboutToAppear(){
    // await PreferencesUtil.
    await preferencesUtil.getPreferencesFromStorage()
    //await  面向对象C++，JAVA  static
  }
  async onPageShow(){
    let isClick=await preferencesUtil.getPreference()
    this.isClick4=(isClick=="true")?true:false
    console.info(isClick)
  }


  @State
  message:string=(router.getParams() as Record<string,string>)['sendMsg']
  @State
  index:number=(router.getParams() as Record<string,number>)['sendIndex']
  @State
  imageSize:number=30
  @State
  isClick1:boolean=true
  @State
  isClick2:boolean=true
  @State
  isClick3:boolean=true
  @State
  isClick4:boolean=true





dialogController:CustomDialogController=new CustomDialogController({
    builder:CollectCustomDialog({
      cancel: this.onCancel,
      confirm:this.onAccept
    }),
    offset:{dx:0,dy:0},
    alignment: DialogAlignment.Bottom,
    customStyle:true



  })


  onCancel(){
    console.info('取消回调')
  }
  onAccept(){
    console.info('确认回调')
  }


  build(){
    Column() {

      //一张照片

      Image($r(this.message))// .height('100%')
        .width('100%')


      //一些图标


      Row() {
        Column() {
          if (this.isClick1) {
            Image($r('app.media.icon1'))
              .width(this.imageSize)
              .margin({
                left: '40.00vp'
              })
              .onClick(()=>{
                if(this.isClick2==false){
                  this.isClick2=true
                }
                this.isClick1=false
              })
          }
          else {
            Image($r('app.media.iconClick1'))
              .width(this.imageSize)
              .margin({
                left: '40.00vp'
              })
              .onClick(()=>{
                this.isClick1=true
              })
          }
        }
        .width('20%')




        Column() {
          if (this.isClick2) {
            Image($r('app.media.icon2'))
              .width(this.imageSize)
              .margin({
                left: '20.00vp'
              })
              .onClick(()=>{
                if(this.isClick1==false){
                  this.isClick1=true
                }
                this.isClick2=false
              })
          }
          else {
            Image($r('app.media.iconClick2'))
              .width(this.imageSize)
              .margin({
                left: '20.00vp'
              })
              .onClick(()=>{
                this.isClick2=true
              })
          }
        }
        .width('20%')




        Column() {
          if (this.isClick3) {
            Image($r('app.media.icon3'))
              .width(this.imageSize)
              .onClick(()=>{
                this.isClick3=false
              })
          }
          else{
            Image($r('app.media.iconClick3'))
              .width(this.imageSize)
              .onClick(()=>{
                this.isClick3=true
              })
          }
        }
        .width('20%')




        Column() {
          if (this.isClick4) {
            Image($r('app.media.icon4'))
              .width(this.imageSize)
              .margin({
                right: '20.00vp'
              })
              .onClick(()=>{
                this.isClick4=false
                preferencesUtil.putPreference(this.isClick4)

                this.dialogController.open()
                setTimeout(()=>{
                  this.dialogController.close()
                },3000)
                //this.dialogController.close()
              })
          }
          else{
            Image($r('app.media.iconClick4'))
              .width(this.imageSize)
              .margin({
                right: '20.00vp'
              })
              .onClick(()=>{
                this.isClick4=true
                preferencesUtil.putPreference(this.isClick4)
              })
          }
        }
        .width('20%')




        Column() {
          Image($r('app.media.icon5'))
            .width(this.imageSize)
            .margin({
              right: '40.00vp'
            })
        }
        .width('20%')
      }
      .height(40)
      .width('100%')


      //一些推荐视频
      Column() {
        Image($r('app.media.videoList'))
          .width('100%')

      }
    }
    .width('100%')
    // .height('100%')
     .width('100%')
  }
}
import {TitleComponent} from './TitleComponent'
import {VideoComponent} from './VideoComponent'
import {FunctionComponent} from './FunctionComponent'
import {SlideShow} from './SlideShow'
import {BottomHomePage} from './BottomHomePage'
import router from '@ohos.router';
import { staticMap } from '@kit.MapKit'
import {PreferencesUtil} from './PreferencesUtil'
import {preferencesUtil} from './PreferencesUtil'
@Entry
@Component
// struct Index{
//   build()
//   {
//     Column({space:3}) {
//       TitleComponent()
//       FunctionComponent()
//       Stack() {
//         Scroll() {
//           Column() {
//
//             SlideShow()
//             VideoComponent()
//             VideoComponent()
//             VideoComponent()
//           }
//         }
//         Row(){
//           BottomHomePage()
//         }
//         .position({x:'0%',y:'87%'})
//       }
//     }
//   }
// }

struct Index{
  // @State
  // username:string="abcdef"
  //
  // private username_reg=/r^[A-Za-z0-9]{5,8}$/
  //
  // onPageShow(){
  //   let test_res=this.username_reg.test(this.username)
  //   let test:string =test_res?"true":"false"
  //   console.info(test)
  // }

  private scroller=new Scroller()


  @State
  opacityValue:number=1
  @State
  isFunctionComponent:boolean=false


  private scrollStatusBar(y:number){
    if(y<40){
      this.opacityValue=1-y/40
    }
    else{
      this.opacityValue=1
    }
  }

  aboutToAppear(){
    preferencesUtil.putPreference(false)
  }


  build() {
    Stack({alignContent:Alignment.Top}) {
      Scroll(this.scroller) {
        Column() {
            TitleComponent()
              .opacity(this.opacityValue)
            FunctionComponent()
            SlideShow()
            VideoComponent()
            VideoComponent()
            VideoComponent()
        }
      }
      .onWillScroll(()=>{
        this.scrollStatusBar(this.scroller.currentOffset().yOffset)
      })
      Row(){
        BottomHomePage()
      }
      .position({x:0,y:'98%'})

    }
  }
}
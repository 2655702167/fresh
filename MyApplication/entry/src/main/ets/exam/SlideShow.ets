//@Entry
@Component
export struct SlideShow {
  build() {
    //写一个轮播图，我记得有一个组件可以做到
    Row() {
      Swiper() {
        Image($r('app.media.slideShow1'))
          .height('100%')
          .width('100%')
        Image($r('app.media.slideShow2'))
          .height('100%')
          .width('100%')
        Image($r('app.media.slideShow3'))
          .height('100%')
          .width('100%')
      }
      .interval(5000)
      .autoPlay(true)
    }
    .height(200)
    .width('100%')
  }
}
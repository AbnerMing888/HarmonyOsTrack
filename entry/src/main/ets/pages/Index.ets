import { TrackProgress } from '@abner/track'

@Entry
@Component
struct Index {
  @State leftProgress: number = 0
  @State rightProgress: number = 100

  build() {
    Column() {
      Text("默认模式")
        .fontWeight(FontWeight.Bold)
        .height(40)
        .fontSize(16)
        .textAlign(TextAlign.Center)
      TrackProgress({
        pointerWidth: 20,
        onLeftProgress: (progress: number) => {
          console.log("===左侧指针进度：" + progress)
        },
        onRightProgress: (progress: number) => {
          console.log("===右侧指针进度：" + progress)
        }
      })

      Text("获取进度")
        .fontWeight(FontWeight.Bold)
        .height(40)
        .fontSize(16)
        .textAlign(TextAlign.Center)
        .margin({ top: 10 })

      RelativeContainer() {
        Text(this.leftProgress.toString())
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            left: { anchor: "__container__", align: HorizontalAlign.Start }
          })
        Text(this.rightProgress.toString())
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            right: { anchor: "__container__", align: HorizontalAlign.End }
          })
      }.width("100%")
      .height(20)
      .margin({ left: 10, right: 10, bottom: 10 })

      TrackProgress({
        pointerWidth: 20,
        onLeftProgress: (progress: number) => {
          this.leftProgress = progress
        },
        onRightProgress: (progress: number) => {
          this.rightProgress = progress
        }
      })

      Text("更改颜色")
        .fontWeight(FontWeight.Bold)
        .height(40)
        .fontSize(16)
        .textAlign(TextAlign.Center)
        .margin({ top: 10 })

      TrackProgress({
        pointerWidth: 20,
        leftPointerBgColor: Color.Orange,
        rightPointerBgColor: Color.Orange,
        trackSelectColor: Color.Orange,
        trackBgBorder: { width: 1, color: Color.Orange, radius: 5 },
        onLeftProgress: (progress: number) => {
          console.log("===左侧指针进度：" + progress)
        },
        onRightProgress: (progress: number) => {
          console.log("===右侧指针进度：" + progress)
        }
      })

      Text("自定义滑块")
        .fontWeight(FontWeight.Bold)
        .height(40)
        .fontSize(16)
        .textAlign(TextAlign.Center)
        .margin({ top: 10 })

      TrackProgress({
        pointerWidth: 20,
        leftPointerLayout: this.pointerLayout,
        rightPointerLayout: this.pointerLayout,
        onLeftProgress: (progress: number) => {
          console.log("===左侧指针进度：" + progress)
        },
        onRightProgress: (progress: number) => {
          console.log("===右侧指针进度：" + progress)
        }
      })

      Text("自定义轨道")
        .fontWeight(FontWeight.Bold)
        .height(40)
        .fontSize(16)
        .textAlign(TextAlign.Center)
        .margin({ top: 10 })

      TrackProgress({
        pointerWidth: 20,
        trackLayout: this.trackLayout,
        trackBgLayout: this.trackBgLayout,
        onLeftProgress: (progress: number) => {
          console.log("===左侧指针进度：" + progress)
        },
        onRightProgress: (progress: number) => {
          console.log("===右侧指针进度：" + progress)
        }
      })
    }
    .height('100%')
    .width('100%')
    .padding({ left: 10, right: 10 })
  }

  //轨道视图，可以自行定义
  @Builder
  trackLayout() {
    Column() {

    }.backgroundColor(Color.Brown)
    .width("100%")
    .height("90%")
    .borderRadius(5)
  }

  //轨道背景视图，可以自行定义
  @Builder
  trackBgLayout() {

  }

  //滑块视图
  @Builder
  pointerLayout() {
    Column() {
      Image($r("app.media.app_icon"))
        .width(20)
        .height(20)
    }.width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)
  }
}
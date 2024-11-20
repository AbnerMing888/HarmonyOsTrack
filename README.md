## 介绍

track是一个音视频轨道组件，适用于常见的视频选取，音频选取，以及左右需要截取进度等场景

## 开发环境

DevEco Studio NEXT Developer Beta1,Build Version: 5.0.3.900

Api版本：**12**

modelVersion：5.0.0

## 效果

<p align="center">
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/track/track.png" width="400px" />
</p>

## 快速使用

### 远程依赖方式使用【推荐】

方式一：在Terminal窗口中，执行如下命令安装三方包，DevEco Studio会自动在工程的oh-package.json5中自动添加三方包依赖。

**建议：在使用的模块路径下进行执行命令。**

```
ohpm install @abner/track
```

方式二：在工程的oh-package.json5中设置三方包依赖，配置示例如下：

```
"dependencies": { "@abner/track": "^1.0.0"}
```

## 代码使用

### 1、普通使用 

```typescript

TrackProgress({
  pointerWidth: 20,
  onLeftProgress: (progress: number) => {
    console.log("===左侧指针进度：" + progress)
  },
  onRightProgress: (progress: number) => {
    console.log("===右侧指针进度：" + progress)
  }
})

```

### 2、获取进度

```typescript
TrackProgress({
  pointerWidth: 20,
  onLeftProgress: (progress: number) => {
    console.log("===左侧指针进度：" + progress)
  },
  onRightProgress: (progress: number) => {
    console.log("===右侧指针进度：" + progress)
  }
})

```
### 3、更改颜色

```typescript
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
```
### 4、自定义滑块


```typescript
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
```

### 5、自定义轨道

```typescript
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
```

## 属性介绍

| 属性                  | 类型                                                                       | 概述          |
|---------------------|--------------------------------------------------------------------------|-------------|
| progressWidth       | Length                                                                   | 进度条的宽度      |
| progressHeight      | Length                                                                   | 进度条的高度 默认50 |
| onLeftProgress      | (progress: number) => void                                               | 左边滑动的进度     |
| onLeftEndProgress   | (progress: number) => void                                               | 左边滑动结束的进度   |
| onRightProgress     | (progress: number) => void                                               | 右边滑动的进度     |
| onRightEndProgress  | (progress: number) => void                                               | 右边滑动结束的进度   |
| pointerHeight       | Length                                                                   | 滑块的高度       |
| trackLayout         | (leftProgress: number, rightProgress: number, viewWidth: number) => void | 自定义的轨道      |
| trackBgLayout       | () => void                                                               | 自定义的轨道背景视图  |
| leftPointerLayout   | () => void                                                               | 左边滑块视图      |
| rightPointerLayout  | () => void                                                               | 右边滑块视图      |
| leftPointerBgColor  | ResourceColor                                                            | 左边滑块背景颜色    |
| rightPointerBgColor | ResourceColor                                                            | 右边滑块背景颜色    |
| leftPointerBorder   | Length/BorderRadiuses/ LocalizedBorderRadiuses                           | 左侧滑块的圆角度数   |
| rightPointerBorder  | Length/BorderRadiuses/ LocalizedBorderRadiuses                           | 右侧滑块的圆角度数   |
| trackBgBorder       | BorderOptions                                                            | 轨道背景Border  |
| trackSelectColor    | ResourceColor                                                            | 滑动选择的背景     |
| trackNormalColor    | ResourceColor                                                            | 滑动未选择的背景    |
| pointerLineColor    | ResourceColor                                                            | 滑块线条颜色      |
| pointerLineWidth    | number /string                                                           | 滑块线条宽度      |
| pointerLineHeight   |                                                                          | 滑块线条高度      |
| pointerLineCap      | LineCapStyle                                                             | 滑块线条类型      |


## 案例

可以查看相关Demo【右侧仓库地址】。

## 咨询作者

如果您在使用上有问题，解决不了，或者查看精华的鸿蒙技术文章，可扫码进行操作。

<p><img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/abner.jpg" width="150"></p>

## License

```
Copyright (C) AbnerMing, HarmonyOsTrack Open Source Project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

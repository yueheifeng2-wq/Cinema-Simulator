# 电影院模拟器 · 互动与收藏版

一个基于 mpv.net 改造的 Windows 桌面播放器小游戏：从黑白马赛克、静音开始，
靠有效观看视频赚取金币，逐步解锁画质、声音、色彩、座位与观众。

## 下载

**发给别人这一个链接即可：**

https://github.com/yueheifeng2-wq/Cinema-Simulator/releases/latest

在 Releases 页面按需下载：

| 文件 | 说明 |
| --- | --- |
| `电影院模拟器-互动与收藏版.exe` | 主程序，Windows 10/11 x64，双击即用，无需安装 |
| `画质靠肝-完整开发迁移包.zip` | 完整源码 + 离线 .NET SDK / 依赖，用于继续开发 |
| `Cinema-Simulator-初始档-便携版.zip` | 主程序 + 干净的初始配置，解压即用 |

> exe 和开发包体积超过 GitHub 仓库单文件 100 MB 的限制，所以放在 Releases 里分发，
> 仓库本身只保留说明和出厂默认配置。

## 关于初始档

仓库和发布包都不携带任何存档。首次启动时，程序会自己创建一份全新的初始档：
金币 0、观看时长 0、所有升级未解锁、黑白马赛克加静音，没有续播记录，也没有本机声卡信息。

如果你手上是一个玩过的版本，想回到初始档：退出程序，把 exe 同目录下
`portable_config` 里的 `viewing-game.json`、`cinema-resume.json`、
`cinema-audio-check.json` 三个文件删掉，再启动即可（记得先备份自己的存档）。

## 使用

1. 把文件解压到一个可写的文件夹，不要在压缩包预览窗口里直接运行。
2. 双击 exe 启动；需要播放自己的视频时，用程序里的「打开视频」或直接拖入。
3. 存档会自动写在 `portable_config` 目录下，请勿删除整个目录。

## 目录说明

- `README.md`：本说明
- `portable_config/`：出厂默认配置（mpv 参数、效果着色器、许可证）
- `ChatGPT 图像 2026年11月14日 06_05_48.png`：封面图

## 许可与来源

基于 [mpv.net](https://github.com/mpvnet-player/mpv.net)（GPL v2）与
[libmpv](https://github.com/mpv-player/mpv) 改造，许可证见
`portable_config/License.txt`；演示样片 Sintel Trailer 来自 Blender Foundation。
公开发行时请遵守上游项目与依赖的许可证。

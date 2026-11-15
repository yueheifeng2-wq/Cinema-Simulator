# 电影院模拟器 · 互动与收藏版

一个基于 mpv.net 改造的 Windows 桌面播放器小游戏：从黑白马赛克、静音开始，
靠有效观看视频赚取金币，逐步解锁画质、声音、色彩、座位与观众。

## 下载

**一键下载（发给别人这个链接即可）：**

https://github.com/yueheifeng2-wq/Cinema-Simulator/releases/latest/download/Cinema-Simulator.exe

**Release 页面：** https://github.com/yueheifeng2-wq/Cinema-Simulator/releases/latest

主程序 `Cinema-Simulator.exe`（约 119 MiB），Windows 10/11 x64，双击即用，无需安装。

> exe 超过 GitHub 仓库单文件 100 MB 限制，因此通过 Releases 分发；仓库本身只保留
> 说明与出厂默认配置。原目录中的完整开发迁移包（527 MB）本次未上传，需要时可再发布。

## 关于初始档

exe 本身不含任何存档。首次启动时，程序会在同目录自动创建 `portable_config`，
并写入一份**全新初始档**：金币 0、观看时长 0、所有升级未解锁、黑白马赛克加静音、
只有 1 位初始观众，没有续播记录，也不含任何本机声卡信息。
仓库本身也不保存存档文件，避免把个人游玩进度公开。

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

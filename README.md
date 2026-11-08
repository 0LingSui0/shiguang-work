# 拾光工作

目标 → 阶段 → 任务的中文计划工具，深色玻璃 + 琥珀金；桌面端带圆形“拾”悬浮球，点击直接快记；手机端可开关悬浮球；计划/记录与 DSH 只读集成。

## 功能

- 四页导航：计划 / 记录 / 讨论 / 已完成
- 拾光路径：目标 → 阶段 → 任务，日期、拖拽、删除、日期弹窗、三级对号、归档
- 桌面圆球：64×64、右下角、点击“快速记一笔”
- 手机：右上角“悬浮球：开/关”
- DSH：`python tools/shiguang.py --plan/--today/--next`

## 安装

### 电脑版

1. 从 [Release v2.0.0](https://github.com/0LingSui0/shiguang-work/releases/tag/v2.0.0) 下载 `ShiguangWork-Setup-2.0.exe`
2. 双击 `安装到本机.cmd`（自动复制 Setup 到 ASCII 临时目录再安装）
3. 卸载：`卸载.cmd`

> **未签名测试包，用户已明确接受**；SmartScreen 可能提示“仍要运行”。

### 手机版

- 从 Release 下载 `ShiguangWork-v2.0.apk`（Android）
- 首次运行允许通知和“显示在其他应用上层”权限
- 右上角按钮可关闭悬浮球

## 校验

```bash
sha256sum -c dist/SHA256SUMS.txt
```

## 已知限制

- 安装包所在路径含中文时 NSIS 可能失败，使用 `安装到本机.cmd` 规避
- 当前 APK 未真机验证（HarmonyOS 7 不能运行 Android APK；已在 Android 35 模拟器验证开关）
- 未签名，未发布 winget
- DSH 同步源可能只有计划、没有任务/记录

## 许可证

MIT

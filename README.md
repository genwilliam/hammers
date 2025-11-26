如果你是第一次接触 Hammerspoon，可以先去看下官方文档 👇
👉 Hammerspoon 官方网站：https://www.hammerspoon.org/

👉 官方文档（API 手册）：https://www.hammerspoon.org/docs/

## 下载

你可以从 Hammerspoon 的官方网站下载最新版本的 Hammerspoon：
https://www.hammerspoon.org/

## 安装

1. 下载并安装 Hammerspoon 应用程序。
2. 打开配置文件,一般在 `~/.hammerspoon/init.lua`，如果没有这个文件，可以新建一个。
   这个 init.lua 文件就是 Hammerspoon 的主配置文件。
3. 将本项目中的所有文件复制到 `~/.hammerspoon/` 目录下(如果有重名的注意修改)。
4. 打开 Hammerspoon 应用程序，先点击菜单栏图标，然后选择“Reload Config”来加载配置文件。

## 说明:

![alt text](/img/img.png)

1. 如图,在 `hammerspoon/modules/ime.lua`中你可以配置相关的输入法切换规则.输入法也可以根据你的情况进行修改

2. 在`hammerspoon/autoreload.lua`中是自动重载配置的代码,你可以根据你的需求进行修改

## 🌱 当前已经实现的功能

目前我只写了两个核心功能，但它们都是“日用即爽”的：

1. 自动切换中英文输入法（App-aware Input Method）

我常年在不同 App 之间跳来跳去：浏览器、代码编辑器、终端、聊天工具、设计软件……
每次切换 App 都要手动切换输入法，实在是太烦人了。

2. 自动重载配置（Auto Reload）

每次修改 init.lua 或模块文件，都不需要自己点击 Reload。
文件变化后 Hammerspoon 会自动重新加载。

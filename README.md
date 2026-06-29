# 我要当市长 数据包实现草案

这是《我要当市长》的数据包骨架，目标版本按 Java 1.21.1 的 `pack_format: 48` 写。

当前目录使用 1.21.1 的新版数据包结构：

```text
data/mayor/function/
data/minecraft/tags/function/
```

如果以后要改到旧版本，需要重新调整目录名和 `pack.mcmeta`。

## 安装位置

把 `mayor_datapack` 文件夹放到地图存档的：

```text
world/datapacks/
```

进入世界后执行：

```text
/reload
```

## 核心指令

```text
/function mayor:setup/init
/function mayor:game/start_8
/function mayor:game/start_10
```

## 阶段编号

```text
0 = 等待大厅
1 = 游戏准备
2 = 选择阶段
3 = 行动任务阶段
4 = 回合结算
5 = 最终结算
```

## 任务池

任务池分成 6 个：

```text
名誉行动任务池：mayor:tasks/action/rep/*
经济行动任务池：mayor:tasks/action/eco/*
民生行动任务池：mayor:tasks/action/life/*

名誉决策任务池：mayor:tasks/decision/rep/*
经济决策任务池：mayor:tasks/decision/eco/*
民生决策任务池：mayor:tasks/decision/life/*
```

行动玩家先选择词条方向，系统再从对应行动池随机抽任务。

决策玩家由系统分配决策议题，玩家只在 A/B/C 中选择。

## 需要地图配合的点

第一版建议地图至少准备：

```text
市政大厅
选择大厅
观战席
行动任务传送入口
结算发布台
```

坐标目前都集中写在 `data/mayor/functions/config/locations.mcfunction`，后续按你的地图改。

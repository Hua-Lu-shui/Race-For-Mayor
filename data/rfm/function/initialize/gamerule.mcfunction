#执行gamerule函数对应的游戏流程
#保证所有玩家在冒险模式下
gamemode adventure @a
#关闭昼夜循环
gamerule doDaylightCycle false
#关闭天气变化
gamerule doWeatherCycle false
#关闭命令反馈
gamerule sendCommandFeedback false
#禁止生物生成
gamerule doMobSpawning false
#禁止植物生长
gamerule randomTickSpeed 0
#防止所有玩家受到常规伤害
effect give @a minecraft:resistance infinite 4 true
#确保所有玩家的饥饿值保持满格
effect give @a minecraft:saturation infinite 0 true
#锁定所有当前已加载的普通展示框和荧光展示框，防止玩家取下或旋转其中的物品
#execute as @e[type=minecraft:item_frame] run data merge entity @s {Fixed:1b}
#execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Fixed:1b}
#保护地图中的画，避免被玩家攻击破坏
#execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:1b}

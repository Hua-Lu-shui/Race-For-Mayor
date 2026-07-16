#保证所有玩家在冒险模式下
gamemode adventure @a
#关闭昼夜循环
gamerule doDaylightCycle false
#关闭天气变化
gamerule doWeatherCycle false
#关闭命令反馈
gamerule sendCommandFeedback false
#锁定所有当前已加载的普通展示框和荧光展示框，防止玩家取下或旋转其中的物品
execute as @e[type=minecraft:item_frame] run data merge entity @s {Fixed:1b}
execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Fixed:1b}




tellraw @a {"text":"本轮所有行动任务执行完毕。","color":"green","bold":true}
scoreboard players set #current_action action_order 0

#恢复所有玩家的游戏模式，并传送回各自办公室
gamemode adventure @a
execute as @a run function rfm:room/return

title @a title {"text":"本轮结束","color":"green","bold":true}
title @a subtitle {"text":"10秒后开始下一轮","color":"yellow"}

#短暂等待后开始下一轮，replace防止重复安排
schedule function rfm:round/round 200t replace

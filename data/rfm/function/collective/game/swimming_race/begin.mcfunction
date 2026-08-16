#切换到运行状态后，主tick不再调用锁位函数
scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 6000
bossbar set rfm:swim_time players @a
bossbar set rfm:swim_time max 6000
bossbar set rfm:swim_time value 6000
bossbar set rfm:swim_time visible true
title @a title {"text":"开始！","color":"green","bold":true}
playsound minecraft:entity.player.splash master @a ~ ~ ~ 1 1 1

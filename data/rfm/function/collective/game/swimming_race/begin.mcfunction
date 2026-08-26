#切换到运行状态后，主tick不再调用锁位函数
scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 6000
bossbar set rfm:swim_time players @a[tag=rfm_participant]
bossbar set rfm:swim_time max 6000
bossbar set rfm:swim_time value 6000
bossbar set rfm:swim_time visible true
effect give @a[tag=rfm_participant] minecraft:water_breathing infinite 0 true
title @a[tag=rfm_participant] title {"translate":"rfm.text.b0797d456278","color":"green","bold":true}
playsound minecraft:entity.player.splash master @a[tag=rfm_participant] ~ ~ ~ 1 1 1

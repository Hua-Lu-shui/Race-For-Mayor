#切换到运行状态后，主tick不再调用锁位函数
scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 6000
bossbar set rfm:needle_time players @a[tag=rfm_participant]
bossbar set rfm:needle_time max 6000
bossbar set rfm:needle_time value 6000
bossbar set rfm:needle_time visible true
effect give @a[tag=rfm_participant] minecraft:levitation infinite 4 true
title @a[tag=rfm_participant] title {"text":"开始！","color":"green","bold":true}
playsound minecraft:entity.shulker.shoot master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1

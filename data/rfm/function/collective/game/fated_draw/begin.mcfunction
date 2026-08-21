#切换到运行状态后解除锁位，并开始2分钟抽签倒计时
scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 2400
bossbar set rfm:lottery_time players @a[tag=rfm_participant]
bossbar set rfm:lottery_time max 2400
bossbar set rfm:lottery_time value 2400
bossbar set rfm:lottery_time visible true
title @a[tag=rfm_participant] title {"text":"开始抽签！","color":"green","bold":true}
playsound minecraft:block.note_block.chime master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1

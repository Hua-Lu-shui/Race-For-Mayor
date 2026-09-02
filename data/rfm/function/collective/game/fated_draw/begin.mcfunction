scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 2400
bossbar set rfm:lottery_time players @a[tag=rfm_participant]
bossbar set rfm:lottery_time max 2400
bossbar set rfm:lottery_time value 2400
bossbar set rfm:lottery_time visible true
title @a[tag=rfm_participant] title {"translate":"rfm.text.0849039c16c1","color":"green","bold":true}
playsound minecraft:block.note_block.chime master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1

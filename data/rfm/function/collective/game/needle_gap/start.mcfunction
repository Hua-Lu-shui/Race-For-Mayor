#全员准备完成：进入开赛倒计时，begin后给予漂浮效果
scoreboard players set #group_state group_state 5
scoreboard players set #group_arrival group_arrival 0
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
effect clear @a[tag=rfm_participant] minecraft:levitation
title @a[tag=rfm_participant] title {"text":"见缝插针","color":"light_purple","bold":true}
schedule function rfm:collective/game/needle_gap/countdown_3 20t replace

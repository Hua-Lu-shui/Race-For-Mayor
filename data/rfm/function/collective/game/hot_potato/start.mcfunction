scoreboard players set #group_state group_state 5
scoreboard players set #elimination group_score 0
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
scoreboard players set @a[tag=rfm_participant] potato_hold 0
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute as @a[tag=rfm_participant] run function rfm:collective/game/hot_potato/lock_position
title @a[tag=rfm_participant] title {"translate":"rfm.text.46a57bf1fff9","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.8a59886752c0","color":"white"}
schedule function rfm:collective/game/hot_potato/countdown_3 20t replace

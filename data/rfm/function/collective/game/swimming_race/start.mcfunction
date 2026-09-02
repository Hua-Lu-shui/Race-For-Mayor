scoreboard players set #group_state group_state 5
scoreboard players set #group_arrival group_arrival 0
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute as @a[tag=rfm_participant] run function rfm:collective/game/swimming_race/lock_position
title @a[tag=rfm_participant] title {"translate":"rfm.text.e6cdff9d469a","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.5bdc19b58b13","color":"white"}
schedule function rfm:collective/game/swimming_race/countdown_3 20t replace

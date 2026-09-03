scoreboard players set #group_state group_state 5
scoreboard players set #elimination group_score 0
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
scoreboard players set @a[tag=rfm_participant] marksman_arrow_time 0
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute as @a[tag=rfm_participant] run function rfm:collective/game/marksman/lock_position
effect give @a[tag=rfm_participant] minecraft:instant_health 1 255 true
title @a[tag=rfm_participant] title {"translate":"rfm.collective.marksman.name","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.collective.marksman.countdown_subtitle","color":"white"}
schedule function rfm:collective/game/marksman/countdown_3 20t replace

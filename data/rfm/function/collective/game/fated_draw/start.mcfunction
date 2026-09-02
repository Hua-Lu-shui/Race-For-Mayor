scoreboard players set #group_state group_state 5
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute store result score #online_total player_count run execute if entity @a[tag=rfm_participant]
function rfm:collective/game/fated_draw/create_slips
execute as @a[tag=rfm_participant] run function rfm:collective/game/fated_draw/lock_position
title @a[tag=rfm_participant] title {"translate":"rfm.text.6afd443ee77c","color":"gold","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.79e38b194ecf","color":"white"}
schedule function rfm:collective/game/fated_draw/countdown_3 20t replace

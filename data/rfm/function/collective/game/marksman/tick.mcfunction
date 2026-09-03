execute unless score #group_state group_state matches 1 run return 0
scoreboard players remove #group_time group_time 1
execute store result bossbar rfm:marksman_time value run scoreboard players get #group_time group_time
tag @e[type=minecraft:arrow,tag=!rfm_marksman_arrow,nbt={item:{components:{"minecraft:custom_data":{rfm_marksman_arrow:1}}}}] add rfm_marksman_arrow
execute as @e[type=minecraft:arrow,tag=rfm_marksman_arrow] run data merge entity @s {pickup:0b}
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_marksman_arrow:1}}}}]
execute as @a[tag=rfm_participant,scores={group_finished=0}] if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run scoreboard players set @s marksman_arrow_time 0
execute as @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=0}] unless items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run scoreboard players set @s marksman_arrow_time 60
scoreboard players remove @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=1..}] marksman_arrow_time 1
execute as @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=0}] unless items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run function rfm:collective/game/marksman/give_arrow
execute if entity @a[tag=rfm_participant,tag=rfm_marksman_pending,scores={group_finished=0}] run function rfm:collective/game/marksman/process_pending
execute if score #group_state group_state matches 1 store result score #active player_count run execute if entity @a[tag=rfm_participant,scores={group_finished=0}]
execute if score #group_state group_state matches 1 if score #active player_count matches 1 run function rfm:collective/game/marksman/finish_winner
execute if score #group_state group_state matches 1 if score #active player_count matches 0 run function rfm:collective/game/marksman/finish_random_winner
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/game/marksman/timeout

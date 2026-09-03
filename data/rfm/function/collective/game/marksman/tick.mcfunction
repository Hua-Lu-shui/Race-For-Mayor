execute unless score #group_state group_state matches 1 run return 0
tag @e[type=minecraft:arrow,tag=!rfm_marksman_arrow,nbt={item:{components:{"minecraft:custom_data":{rfm_marksman_arrow:1}}}}] add rfm_marksman_arrow
execute as @e[type=minecraft:arrow,tag=rfm_marksman_arrow] run data merge entity @s {pickup:0b}
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_marksman_arrow:1}}}}]
execute as @a[tag=rfm_participant,scores={group_finished=0}] if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run scoreboard players set @s marksman_arrow_time 0
execute as @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=0}] unless items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run scoreboard players set @s marksman_arrow_time 60
scoreboard players remove @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=1..}] marksman_arrow_time 1
execute as @a[tag=rfm_participant,scores={group_finished=0,marksman_arrow_time=0}] unless items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}] run function rfm:collective/game/marksman/give_arrow

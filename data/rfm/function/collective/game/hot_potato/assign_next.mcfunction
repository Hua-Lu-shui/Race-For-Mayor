tag @a[tag=rfm_participant,tag=!rfm_hot_potato_assigned] remove rfm_hot_potato_assigning
tag @a[tag=rfm_participant,tag=!rfm_hot_potato_assigned,sort=random,limit=1] add rfm_hot_potato_assigning
scoreboard players operation @a[tag=rfm_hot_potato_assigning,limit=1] potato_pos = #next potato_pos
tag @a[tag=rfm_hot_potato_assigning,limit=1] add rfm_hot_potato_assigned
tag @a[tag=rfm_hot_potato_assigning] remove rfm_hot_potato_assigning
scoreboard players add #next potato_pos 1
execute if score #next potato_pos matches ..8 if entity @a[tag=rfm_participant,tag=!rfm_hot_potato_assigned] run function rfm:collective/game/hot_potato/assign_next

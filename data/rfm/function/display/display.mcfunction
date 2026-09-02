function rfm:attribute/weight_minimum
execute if score #phase phase matches 1 run scoreboard players operation 名誉 weight_display = #weight fame_weight
execute if score #phase phase matches 1 run scoreboard players operation 经济 weight_display = #weight economy_weight
execute if score #phase phase matches 1 run scoreboard players operation 民生 weight_display = #weight welfare_weight
execute if score #phase phase matches 1 run scoreboard players operation 生态 weight_display = #weight ecology_weight

execute as @a[tag=rfm_participant,scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[tag=rfm_participant,scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[tag=rfm_participant,scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[tag=rfm_participant,scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked
execute as @a[tag=rfm_participant] if score #phase phase matches 1 unless score #group_state group_state matches 1 run function rfm:display/player

schedule function rfm:display/display 5t replace

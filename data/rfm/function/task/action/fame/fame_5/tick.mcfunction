bossbar set rfm:cheer_time name [{"translate":"rfm.text.a80ac95d8720","color":"aqua"},{"score":{"name":"@s","objective":"cheer_score"},"color":"green"},{"translate":"rfm.text.0eb806c064df","color":"aqua"},{"score":{"name":"@s","objective":"cheer_combo"},"color":"yellow"}]
execute store result bossbar rfm:cheer_time value run scoreboard players get @s cheer_time

execute as @e[type=minecraft:item,tag=rfm_cheer_flower] at @s run particle minecraft:glow ~ ~0.15 ~ 0.08 0.08 0.08 0 1 force @a[tag=rfm_participant]
execute as @e[type=minecraft:item,tag=rfm_cheer_egg] at @s run particle minecraft:wax_on ~ ~0.15 ~ 0.08 0.08 0.08 0 1 force @a[tag=rfm_participant]

execute if items entity @s hotbar.* minecraft:poppy[minecraft:custom_data~{rfm_cheer_flower:1}] run function rfm:task/action/fame/fame_5/collect_flower
execute if items entity @s inventory.* minecraft:poppy[minecraft:custom_data~{rfm_cheer_flower:1}] run function rfm:task/action/fame/fame_5/collect_flower
execute as @e[type=minecraft:item,tag=rfm_cheer_egg] at @s if entity @a[tag=rfm_participant,scores={action_task=605,cheer_state=1},distance=..1.15,limit=1,sort=nearest] run function rfm:task/action/fame/fame_5/egg_hit

scoreboard players remove @s cheer_spawn 1
execute if score @s cheer_spawn matches ..0 run function rfm:task/action/fame/fame_5/spawn

scoreboard players remove @s cheer_time 1
execute if score @s cheer_time matches ..0 run function rfm:task/action/fame/fame_5/result

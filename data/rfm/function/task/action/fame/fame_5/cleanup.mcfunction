#清理市民应援的临时物品、界面和计分状态
bossbar set rfm:cheer_time visible false
clear @s minecraft:paper[minecraft:custom_data={cheer_ready:1}]
clear @s minecraft:poppy[minecraft:custom_data~{rfm_cheer_flower:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{cheer_ready:1}}}}]
kill @e[type=minecraft:item,tag=rfm_cheer_flower]
kill @e[type=minecraft:item,tag=rfm_cheer_egg]
kill @e[tag=rfm_cheer_citizen]

scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 0
scoreboard players set @s cheer_delay 0
scoreboard players set @s cheer_spawn 0
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 0
function rfm:task/action/sequence/complete_current

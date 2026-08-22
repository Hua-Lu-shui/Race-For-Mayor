#清理民生行动任务1的临时状态和界面
bossbar set rfm:hospital_time visible false
clear @s minecraft:paper[minecraft:custom_data={hospital_ready:1}]
clear @s minecraft:written_book[minecraft:custom_data~{hospital_case:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{hospital_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{hospital_case:1}}}}]
kill @e[type=minecraft:villager,tag=rfm_hospital_staff]
kill @e[type=minecraft:item_display,tag=rfm_hospital_staff]

data remove block 123 -58 -66 Items
data remove block 119 -58 -66 Items
data remove block 115 -58 -66 Items

scoreboard players set @s hospital_round 0
scoreboard players set @s hospital_case 0
scoreboard players set @s hospital_target 0
scoreboard players set @s hospital_answer 0
scoreboard players set @s hospital_correct 0
scoreboard players set @s hospital_time 0
scoreboard players set @s hospital_delay 0
scoreboard players set @s hospital_state 0
scoreboard players set @s hospital_used_1 0
scoreboard players set @s hospital_used_2 0
scoreboard players set @s hospital_used_3 0
scoreboard players set @s hospital_used_4 0
scoreboard players set @s hospital_used_5 0
scoreboard players set @s hospital_used_6 0
scoreboard players set @s hospital_used_7 0
scoreboard players set @s hospital_used_8 0
scoreboard players set @s hospital_used_9 0
scoreboard players set @s hospital_used_10 0
scoreboard players set @s hospital_used_11 0
scoreboard players set @s hospital_used_12 0
function rfm:task/action/sequence/complete_current

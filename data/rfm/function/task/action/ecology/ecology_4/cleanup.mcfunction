#清理生态行动任务4的临时状态和界面
bossbar set rfm:trash_time visible false
clear @s minecraft:paper[minecraft:custom_data={trash_ready:1}]
clear @s minecraft:paper[minecraft:custom_data={trash_item:1}]
clear @s minecraft:glass_bottle[minecraft:custom_data={trash_item:1}]
clear @s minecraft:iron_nugget[minecraft:custom_data={trash_item:1}]
clear @s minecraft:clock[minecraft:custom_data={trash_item:1}]
clear @s minecraft:compass[minecraft:custom_data={trash_item:1}]
clear @s minecraft:rotten_flesh[minecraft:custom_data={trash_item:1}]
clear @s minecraft:poisonous_potato[minecraft:custom_data={trash_item:1}]
clear @s minecraft:melon_slice[minecraft:custom_data={trash_item:1}]
clear @s minecraft:brick[minecraft:custom_data={trash_item:1}]
clear @s minecraft:leather[minecraft:custom_data={trash_item:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{trash_ready:1}}}}]
kill @e[type=minecraft:item_display,tag=rfm_trash_bin_model]

data remove block 236 -59 65 Items
data remove block 232 -59 69 Items
data remove block 236 -59 73 Items
data remove block 240 -59 69 Items

scoreboard players set @s trash_round 0
scoreboard players set @s trash_item_id 0
scoreboard players set @s trash_target 0
scoreboard players set @s trash_answer 0
scoreboard players set @s trash_correct 0
scoreboard players set @s trash_time 0
scoreboard players set @s trash_delay 0
scoreboard players set @s trash_state 0
scoreboard players set @s trash_used_1 0
scoreboard players set @s trash_used_2 0
scoreboard players set @s trash_used_3 0
scoreboard players set @s trash_used_4 0
scoreboard players set @s trash_used_5 0
scoreboard players set @s trash_used_6 0
scoreboard players set @s trash_used_7 0
scoreboard players set @s trash_used_8 0
scoreboard players set @s trash_used_9 0
scoreboard players set @s trash_used_10 0
function rfm:task/action/sequence/complete_current

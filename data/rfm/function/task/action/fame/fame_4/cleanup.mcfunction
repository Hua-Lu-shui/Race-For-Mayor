#清理公开答疑的临时物品、界面和计分状态
bossbar set rfm:qa_time visible false
clear @s minecraft:paper[minecraft:custom_data={qa_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{qa_ready:1}}}}]
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing

scoreboard players set @s qa_round 0
scoreboard players set @s qa_target 0
scoreboard players set @s qa_previous 0
scoreboard players set @s qa_correct 0
scoreboard players set @s qa_time 0
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_delay 0
scoreboard players set @s qa_state 0
function rfm:task/action/sequence/complete_current

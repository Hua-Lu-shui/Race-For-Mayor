#清理经济行动任务2的临时状态和界面
bossbar set rfm:negotiation_time visible false
clear @s minecraft:map[minecraft:custom_data={negotiation_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{negotiation_ready:1}}}}]

scoreboard players set @s negotiation_round 0
scoreboard players set @s negotiation_order 0
scoreboard players set @s negotiation_category 0
scoreboard players set @s negotiation_question 0
scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_correct 0
scoreboard players set @s negotiation_time 0
scoreboard players set @s negotiation_delay 0
scoreboard players set @s negotiation_state 0
function rfm:task/action/sequence/complete_current

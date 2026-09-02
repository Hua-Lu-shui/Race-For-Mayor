bossbar set rfm:negotiation_time visible false
clear @s minecraft:paper[minecraft:custom_data={negotiation_ready:1}]
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
tag @s remove rfm_negotiation_q1_used
tag @s remove rfm_negotiation_q2_used
tag @s remove rfm_negotiation_q3_used
tag @s remove rfm_negotiation_q4_used
tag @s remove rfm_negotiation_q5_used
tag @s remove rfm_negotiation_q6_used
tag @s remove rfm_negotiation_q7_used
tag @s remove rfm_negotiation_q8_used
tag @s remove rfm_negotiation_q9_used
function rfm:task/action/sequence/complete_current

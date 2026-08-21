#正式开始经济行动任务2并初始化计时状态
scoreboard players set @s negotiation_round 0
scoreboard players set @s negotiation_correct 0
scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_time 500
scoreboard players set @s negotiation_state 1
tag @s remove rfm_negotiation_q1_used
tag @s remove rfm_negotiation_q2_used
tag @s remove rfm_negotiation_q3_used
tag @s remove rfm_negotiation_q4_used
tag @s remove rfm_negotiation_q5_used
tag @s remove rfm_negotiation_q6_used
tag @s remove rfm_negotiation_q7_used
tag @s remove rfm_negotiation_q8_used
tag @s remove rfm_negotiation_q9_used

bossbar set rfm:negotiation_time players @a[tag=rfm_participant]
bossbar set rfm:negotiation_time max 500
bossbar set rfm:negotiation_time value 500
bossbar set rfm:negotiation_time visible true

function rfm:task/action/economy/economy_2/prepare_round

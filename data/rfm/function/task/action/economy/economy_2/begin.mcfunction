scoreboard players set @s negotiation_round 0
scoreboard players set @s negotiation_correct 0
scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_time 400
scoreboard players set @s negotiation_state 1
execute store result score @s negotiation_order run random value 1..6

bossbar set rfm:negotiation_time players @a
bossbar set rfm:negotiation_time max 400
bossbar set rfm:negotiation_time value 400
bossbar set rfm:negotiation_time visible true

function rfm:task/action/economy/economy_2/prepare_round

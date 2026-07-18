scoreboard players remove @s supply_time 1
execute store result bossbar rfm:supply_time value run scoreboard players get @s supply_time

function rfm:task/action/economy/economy_4/check
execute if score @s supply_state matches 1 if score @s supply_completed matches 5 run function rfm:task/action/economy/economy_4/result
execute if score @s supply_state matches 1 if score @s supply_time matches ..0 run function rfm:task/action/economy/economy_4/result

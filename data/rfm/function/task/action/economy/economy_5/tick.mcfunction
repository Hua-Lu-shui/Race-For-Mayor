scoreboard players remove @s employment_time 1
execute store result bossbar rfm:employment_time value run scoreboard players get @s employment_time
function rfm:task/action/economy/economy_5/check
execute if score @s employment_completed matches 5 run function rfm:task/action/economy/economy_5/result
execute if score @s employment_state matches 1 if score @s employment_time matches ..0 run function rfm:task/action/economy/economy_5/result

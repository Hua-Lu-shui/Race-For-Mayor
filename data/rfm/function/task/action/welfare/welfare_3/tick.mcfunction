scoreboard players remove @s exercise_time 1
execute store result bossbar rfm:exercise_time value run scoreboard players get @s exercise_time

execute if block 202 -59 -65 minecraft:light_weighted_pressure_plate[power=0] if block 206 -59 -69 minecraft:light_weighted_pressure_plate[power=0] if block 210 -59 -65 minecraft:light_weighted_pressure_plate[power=0] if block 206 -59 -61 minecraft:light_weighted_pressure_plate[power=0] run scoreboard players set @s exercise_armed 1

scoreboard players set @s exercise_answer 0
execute if score @s exercise_armed matches 1 if block 202 -59 -65 minecraft:light_weighted_pressure_plate unless block 202 -59 -65 minecraft:light_weighted_pressure_plate[power=0] run scoreboard players set @s exercise_answer 1
execute if score @s exercise_armed matches 1 if block 206 -59 -69 minecraft:light_weighted_pressure_plate unless block 206 -59 -69 minecraft:light_weighted_pressure_plate[power=0] run scoreboard players set @s exercise_answer 2
execute if score @s exercise_armed matches 1 if block 210 -59 -65 minecraft:light_weighted_pressure_plate unless block 210 -59 -65 minecraft:light_weighted_pressure_plate[power=0] run scoreboard players set @s exercise_answer 3
execute if score @s exercise_armed matches 1 if block 206 -59 -61 minecraft:light_weighted_pressure_plate unless block 206 -59 -61 minecraft:light_weighted_pressure_plate[power=0] run scoreboard players set @s exercise_answer 4

execute if score @s exercise_answer matches 1..4 run function rfm:task/action/welfare/welfare_3/check
execute if score @s exercise_state matches 1 if score @s exercise_time matches ..0 run function rfm:task/action/welfare/welfare_3/result

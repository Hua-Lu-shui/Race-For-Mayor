execute if score @s decision_task matches 415 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 415 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 415 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 415 run tellraw @s {"text":"你选择了立即设立低排放区：生态 +4，民生 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0

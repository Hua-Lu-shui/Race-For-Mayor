execute if score @s decision_task matches 415 run scoreboard players add @s ecology 5
execute if score @s decision_task matches 415 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 415 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 415 run tellraw @s {"text":"你选择了立即设立低排放区：生态 +5，民生 +1，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

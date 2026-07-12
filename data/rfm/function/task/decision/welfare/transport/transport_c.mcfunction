execute if score @s decision_task matches 304 run scoreboard players add @s economy 1
execute if score @s decision_task matches 304 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 304 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 304 run tellraw @s {"text":"你选择了优化现有线路：经济 +1，生态 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0

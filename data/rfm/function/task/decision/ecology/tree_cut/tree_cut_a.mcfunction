execute if score @s decision_task matches 410 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 410 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 410 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 410 run tellraw @s {"text":"你选择了保树并调整道路：生态 +3，民生 +2，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

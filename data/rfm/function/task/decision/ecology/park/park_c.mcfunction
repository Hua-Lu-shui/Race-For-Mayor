execute if score @s decision_task matches 403 run scoreboard players add @s economy 3
execute if score @s decision_task matches 403 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 403 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 403 run tellraw @s {"text":"你选择了优先开发综合商场：经济 +3，生态 -2，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0

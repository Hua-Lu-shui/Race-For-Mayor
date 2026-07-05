execute if score @s decision_task matches 301 run scoreboard players add @s economy 2
execute if score @s decision_task matches 301 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 301 run tellraw @s {"text":"你选择了优化预约流程：经济 +2，民生 -2","color":"yellow"}
scoreboard players set @s decision_task 0

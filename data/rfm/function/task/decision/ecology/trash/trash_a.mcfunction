execute if score @s decision_task matches 404 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 404 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 404 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 404 run tellraw @s {"text":"你选择了全城强制分类：生态 +3，民生 -2，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0

execute if score @s decision_task matches 413 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 413 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 413 run scoreboard players add @s economy 1
execute if score @s decision_task matches 413 run tellraw @s {"text":"你选择了只发布节水倡议：民生 +1，生态 -1，经济 +1","color":"yellow"}
execute if score @s decision_task matches 413 run scoreboard players set @s decision_task 0

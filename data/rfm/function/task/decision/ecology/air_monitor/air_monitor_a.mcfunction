execute if score @s decision_task matches 409 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 409 run scoreboard players add @s fame 3
execute if score @s decision_task matches 409 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 409 run tellraw @s {"text":"你选择了公开实时监测网：生态 +3，名誉 +3，经济 -2","color":"yellow"}
execute if score @s decision_task matches 409 run scoreboard players set @s decision_task 0

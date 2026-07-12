execute if score @s decision_task matches 408 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 408 run scoreboard players add @s fame 1
execute if score @s decision_task matches 408 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 408 run tellraw @s {"text":"你选择了保护核心区：生态 +3，名誉 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0

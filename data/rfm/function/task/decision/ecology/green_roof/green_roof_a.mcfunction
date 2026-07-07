execute if score @s decision_task matches 406 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 406 run scoreboard players add @s fame 1
execute if score @s decision_task matches 406 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 406 run tellraw @s {"text":"你选择了强制新建筑绿化：生态 +2，名誉 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0

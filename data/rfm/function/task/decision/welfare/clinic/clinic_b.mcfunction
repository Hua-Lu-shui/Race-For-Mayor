execute if score @s decision_task matches 306 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 306 run scoreboard players add @s fame 1
execute if score @s decision_task matches 306 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 306 run tellraw @s {"text":"你选择了先开设流动门诊：民生 +2，名誉 +1，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

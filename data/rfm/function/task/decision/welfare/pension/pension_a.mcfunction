execute if score @s decision_task matches 305 run scoreboard players add @s welfare 5
execute if score @s decision_task matches 305 run scoreboard players add @s fame 1
execute if score @s decision_task matches 305 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 305 run tellraw @s {"text":"你选择了建设社区养老中心：民生 +5，名誉 +1，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0

execute if score @s decision_task matches 314 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 314 run scoreboard players add @s fame 1
execute if score @s decision_task matches 314 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 314 run tellraw @s {"text":"你选择了改造学校体育馆：民生 +2，名誉 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 314 run scoreboard players set @s decision_task 0

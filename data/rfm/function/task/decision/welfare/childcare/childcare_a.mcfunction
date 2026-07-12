execute if score @s decision_task matches 307 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 307 run scoreboard players add @s fame 2
execute if score @s decision_task matches 307 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 307 run tellraw @s {"text":"你选择了建设公共托育中心：民生 +4，名誉 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 307 run scoreboard players set @s decision_task 0

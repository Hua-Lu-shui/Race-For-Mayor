execute if score @s decision_task matches 302 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 302 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 302 run scoreboard players add @s fame 1
execute if score @s decision_task matches 302 run tellraw @s {"text":"你选择了租房补贴和限价房：民生 +2，经济 -1，名誉 +1","color":"yellow"}
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0

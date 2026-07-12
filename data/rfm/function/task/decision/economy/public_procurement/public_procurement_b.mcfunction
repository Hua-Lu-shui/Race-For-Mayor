execute if score @s decision_task matches 215 run scoreboard players add @s economy 2
execute if score @s decision_task matches 215 run scoreboard players add @s fame 2
execute if score @s decision_task matches 215 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 215 run tellraw @s {"text":"你选择了本地加分公开竞价：经济 +2，名誉 +2，民生 +1","color":"yellow"}
execute if score @s decision_task matches 215 run scoreboard players set @s decision_task 0

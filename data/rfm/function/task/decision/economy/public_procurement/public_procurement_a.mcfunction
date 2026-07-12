execute if score @s decision_task matches 215 run scoreboard players add @s economy 3
execute if score @s decision_task matches 215 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 215 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 215 run tellraw @s {"text":"你选择了优先本地企业：经济 +3，民生 +2，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 215 run scoreboard players set @s decision_task 0

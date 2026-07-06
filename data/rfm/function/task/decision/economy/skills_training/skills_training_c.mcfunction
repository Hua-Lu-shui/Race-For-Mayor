execute if score @s decision_task matches 214 run scoreboard players add @s economy 1
execute if score @s decision_task matches 214 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 214 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 214 run tellraw @s {"text":"你选择了只提供线上课程：经济 +1，民生 -1，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0

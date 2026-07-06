execute if score @s decision_task matches 309 run scoreboard players add @s economy 1
execute if score @s decision_task matches 309 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 309 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 309 run tellraw @s {"text":"你选择了维持现状：经济 +1，民生 -2，名誉 -1","color":"yellow"}
scoreboard players set @s decision_task 0

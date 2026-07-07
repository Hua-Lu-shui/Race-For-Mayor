execute if score @s decision_task matches 314 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 314 run scoreboard players add @s fame 1
execute if score @s decision_task matches 314 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 314 run tellraw @s {"text":"你选择了快速建设避难点：民生 +6，名誉 +1，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

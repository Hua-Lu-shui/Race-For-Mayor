execute if score @s decision_task matches 305 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 305 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 305 run tellraw @s {"text":"你选择了发放居家养老服务券：民生 +2，经济 -1","color":"yellow"}
execute if score @s decision_task matches 305 run scoreboard players set @s decision_task 0

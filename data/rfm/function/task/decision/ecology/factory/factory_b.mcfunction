execute if score @s decision_task matches 401 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 401 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 401 run tellraw @s {"text":"你选择了限期整改并补助设备：生态 +2，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

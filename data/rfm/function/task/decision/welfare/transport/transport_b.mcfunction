execute if score @s decision_task matches 304 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 304 run tellraw @s {"text":"你选择了增开高峰通勤专线：民生 +2，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

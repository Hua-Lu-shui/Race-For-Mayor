execute if score @s decision_task matches 304 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 304 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 304 run tellraw @s {"text":"你选择了大幅增加公交线路：民生 +3，生态 -1，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

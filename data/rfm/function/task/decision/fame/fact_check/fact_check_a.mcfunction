execute if score @s decision_task matches 114 run scoreboard players add @s fame 4
execute if score @s decision_task matches 114 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 114 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 114 run tellraw @s {"text":"你选择了主动加入并公开数据：名誉 +4，民生 +1，经济 -2","color":"yellow"}
execute if score @s decision_task matches 114 run scoreboard players set @s decision_task 0

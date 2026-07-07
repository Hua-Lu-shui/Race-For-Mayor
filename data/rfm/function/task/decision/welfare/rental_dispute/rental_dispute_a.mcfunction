execute if score @s decision_task matches 312 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 312 run scoreboard players add @s fame 1
execute if score @s decision_task matches 312 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 312 run tellraw @s {"text":"你选择了设立租房仲裁中心：民生 +4，名誉 +1，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

execute if score @s decision_task matches 313 run scoreboard players add @s welfare 5
execute if score @s decision_task matches 313 run scoreboard players add @s fame 2
execute if score @s decision_task matches 313 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 313 run tellraw @s {"text":"你选择了全面改造公共设施：民生 +5，名誉 +2，经济 -3","color":"yellow"}
scoreboard players set @s decision_task 0

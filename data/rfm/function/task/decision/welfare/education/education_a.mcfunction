execute if score @s decision_task matches 303 run scoreboard players add @s welfare 5
execute if score @s decision_task matches 303 run scoreboard players add @s fame 2
execute if score @s decision_task matches 303 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 303 run tellraw @s {"text":"你选择了新建学校并扩招：民生 +5，名誉 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 303 run scoreboard players set @s decision_task 0

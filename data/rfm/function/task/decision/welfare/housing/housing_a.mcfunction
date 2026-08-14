#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 302 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 302 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 302 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 302 run tellraw @s {"text":"你选择了大规模建设保障住房：民生 +8，经济 -6，生态 -2","color":"yellow"}
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0

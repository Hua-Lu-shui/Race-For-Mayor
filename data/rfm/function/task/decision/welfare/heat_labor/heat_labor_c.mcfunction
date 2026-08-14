#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 317 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 317 run scoreboard players add @s economy 4
execute if score @s decision_task matches 317 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 317 run tellraw @s {"text":"你选择了只发布防暑建议：民生 -6，经济 +4，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0

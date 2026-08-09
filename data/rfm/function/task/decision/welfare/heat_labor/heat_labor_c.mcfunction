#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 317 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 317 run scoreboard players add @s economy 2
execute if score @s decision_task matches 317 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 317 run tellraw @s {"text":"你选择了只发布防暑建议：民生 -3，经济 +2，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0

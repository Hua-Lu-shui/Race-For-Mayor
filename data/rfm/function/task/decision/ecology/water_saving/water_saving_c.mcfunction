#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 413 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 413 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 413 run scoreboard players add @s economy 2
execute if score @s decision_task matches 413 run tellraw @s {"text":"你选择了只发布节水倡议：民生 +2，生态 -2，经济 +2","color":"yellow"}
execute if score @s decision_task matches 413 run scoreboard players set @s decision_task 0

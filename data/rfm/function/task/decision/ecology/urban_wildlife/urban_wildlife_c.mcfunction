#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 419 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 419 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 419 run scoreboard players add @s economy 2
execute if score @s decision_task matches 419 run tellraw @s {"text":"你选择了允许高风险区域直接驱除：生态 -6，民生 +6，经济 +2","color":"yellow"}
execute if score @s decision_task matches 419 run scoreboard players set @s decision_task 0

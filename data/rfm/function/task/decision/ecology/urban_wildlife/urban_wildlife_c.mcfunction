#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 419 run scoreboard players remove @s ecology 3
execute if score @s decision_task matches 419 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 419 run scoreboard players add @s economy 1
execute if score @s decision_task matches 419 run tellraw @s {"text":"你选择了允许高风险区域直接驱除：生态 -2，民生 +3，经济 +1","color":"yellow"}
execute if score @s decision_task matches 419 run scoreboard players set @s decision_task 0

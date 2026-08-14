#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 401 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 401 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 401 run tellraw @s {"text":"你选择了限期整改并补助设备：生态 +6，经济 -2","color":"yellow"}
execute if score @s decision_task matches 401 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 405 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 405 run scoreboard players add @s fame 1
execute if score @s decision_task matches 405 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 405 run tellraw @s {"text":"你选择了全面更换清洁能源设备：生态 +4，名誉 +1，经济 -3","color":"yellow"}
execute if score @s decision_task matches 405 run scoreboard players set @s decision_task 0

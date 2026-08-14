#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 408 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 408 run scoreboard players add @s fame 2
execute if score @s decision_task matches 408 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 408 run tellraw @s {"text":"你选择了保护核心区：生态 +6，名誉 +2，经济 -2","color":"yellow"}
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0

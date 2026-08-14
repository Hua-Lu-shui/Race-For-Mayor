#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 405 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 405 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 405 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 405 run tellraw @s {"text":"你选择了先改造学校和医院：生态 +4，民生 +2，经济 -2","color":"yellow"}
execute if score @s decision_task matches 405 run scoreboard players set @s decision_task 0

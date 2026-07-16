#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 1
execute if score @s decision_task matches 412 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 412 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 412 run tellraw @s {"text":"你选择了先选十所学校试点：生态 +1，民生 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 412 run scoreboard players set @s decision_task 0

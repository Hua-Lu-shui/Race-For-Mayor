#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 403 run scoreboard players add @s economy 6
execute if score @s decision_task matches 403 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 403 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 403 run tellraw @s [{"text":"你选择了优先开发综合商场：","color":"green"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 403 run scoreboard players set @s decision_task 0

#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 403 run scoreboard players add @s economy 6
execute if score @s decision_task matches 403 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 403 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 403 run tellraw @s {"text":"你选择了优先开发综合商场：经济 +6，生态 -2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 403 run scoreboard players set @s decision_task 0

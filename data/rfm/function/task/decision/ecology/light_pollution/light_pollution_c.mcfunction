#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 416 run scoreboard players remove @s ecology 3
execute if score @s decision_task matches 416 run scoreboard players add @s economy 3
execute if score @s decision_task matches 416 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 416 run tellraw @s {"text":"你选择了只发布自愿节制倡议：生态 -3，经济 +3，民生 +1","color":"yellow"}
execute if score @s decision_task matches 416 run scoreboard players set @s decision_task 0

#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 416 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 416 run scoreboard players add @s economy 6
execute if score @s decision_task matches 416 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 416 run tellraw @s [{"text":"你选择了只发布自愿节制倡议：","color":"green"},{"text":"生态 -6","color":"green"},{"text":"，","color":"gray"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
execute if score @s decision_task matches 416 run scoreboard players set @s decision_task 0

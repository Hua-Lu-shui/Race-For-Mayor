#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 405 run scoreboard players add @s economy 6
execute if score @s decision_task matches 405 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 405 run tellraw @s {"text":"你选择了继续使用现有能源系统：经济 +6，生态 -2","color":"yellow"}
execute if score @s decision_task matches 405 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 419 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 419 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 419 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 419 run tellraw @s {"text":"你选择了建设生态廊道并封闭垃圾源：生态 +4，民生 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 419 run scoreboard players set @s decision_task 0

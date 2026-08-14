#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 410 run scoreboard players add @s economy 4
execute if score @s decision_task matches 410 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 410 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 410 run tellraw @s {"text":"你选择了快速砍伐重铺道路：经济 +4，生态 -6，民生 -2","color":"yellow"}
execute if score @s decision_task matches 410 run scoreboard players set @s decision_task 0

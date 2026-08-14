#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 401 run scoreboard players add @s economy 4
execute if score @s decision_task matches 401 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 401 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 401 run tellraw @s {"text":"你选择了暂不处罚只警告：经济 +4，生态 -4，民生 -4","color":"yellow"}
execute if score @s decision_task matches 401 run scoreboard players set @s decision_task 0

#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 201 run scoreboard players add @s economy 6
execute if score @s decision_task matches 201 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 201 run tellraw @s {"text":"你选择了减税：经济 +6，民生 -2","color":"yellow"}
execute if score @s decision_task matches 201 run scoreboard players set @s decision_task 0

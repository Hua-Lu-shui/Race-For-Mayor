#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 303 run scoreboard players add @s economy 2
execute if score @s decision_task matches 303 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 303 run tellraw @s {"text":"你选择了调整片区和班额：经济 +2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 303 run scoreboard players set @s decision_task 0

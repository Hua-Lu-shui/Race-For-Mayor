#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 415 run scoreboard players add @s economy 2
execute if score @s decision_task matches 415 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 415 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 415 run tellraw @s {"text":"你选择了暂不限制车辆：经济 +2，生态 -2，民生 -1","color":"yellow"}
execute if score @s decision_task matches 415 run scoreboard players set @s decision_task 0

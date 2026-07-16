#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 402 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 402 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 402 run tellraw @s {"text":"你选择了全线清淤并关闭污染排口：生态 +6，民生 +1，经济 -3","color":"yellow"}
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0

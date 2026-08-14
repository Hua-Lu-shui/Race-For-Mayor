#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s ecology 12
execute if score @s decision_task matches 402 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 402 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 402 run tellraw @s {"text":"你选择了全线清淤并关闭污染排口：生态 +12，民生 +2，经济 -6","color":"yellow"}
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0

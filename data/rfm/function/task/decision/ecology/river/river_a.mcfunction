#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s ecology 12
execute if score @s decision_task matches 402 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 402 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 402 run tellraw @s [{"text":"你选择了全线清淤并关闭污染排口：","color":"red"},{"text":"生态 +12","color":"green"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0

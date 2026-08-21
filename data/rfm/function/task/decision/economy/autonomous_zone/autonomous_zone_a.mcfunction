#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 218 run scoreboard players add @s economy 10
execute if score @s decision_task matches 218 run scoreboard players add @s fame 4
execute if score @s decision_task matches 218 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 218 run tellraw @s [{"text":"你选择了开放中心城区全天测试：","color":"red"},{"text":"经济 +10","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +4","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 -6","color":"red"}]
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0

#执行民生决策任务的B方案并结算属性
execute if score @s decision_task matches 304 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 304 run tellraw @s [{"text":"你选择了增开高峰通勤专线：","color":"aqua"},{"text":"民生 +4","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"}]
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0

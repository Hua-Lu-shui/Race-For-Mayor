#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 302 run scoreboard players add @s economy 4
execute if score @s decision_task matches 302 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 302 run tellraw @s [{"text":"你选择了市场调节为主：","color":"green"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -4","color":"red"}]
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0

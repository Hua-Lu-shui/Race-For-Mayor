#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 217 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 217 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 217 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 217 run tellraw @s [{"text":"你选择了交由市场自行消化：","color":"green"},{"text":"经济 -4","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 +4","color":"green"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"}]
execute if score @s decision_task matches 217 run scoreboard players set @s decision_task 0

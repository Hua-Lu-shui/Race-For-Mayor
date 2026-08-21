#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 209 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 209 run tellraw @s [{"text":"你选择了大规模设备补贴：","color":"red"},{"text":"经济 -4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +6","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"}]
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0

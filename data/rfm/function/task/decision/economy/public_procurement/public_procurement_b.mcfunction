#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 215 run scoreboard players add @s economy 4
execute if score @s decision_task matches 215 run scoreboard players add @s fame 4
execute if score @s decision_task matches 215 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 215 run tellraw @s [{"text":"你选择了本地加分公开竞价：","color":"aqua"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +4","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
execute if score @s decision_task matches 215 run scoreboard players set @s decision_task 0

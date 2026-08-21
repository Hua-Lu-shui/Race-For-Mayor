#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 207 run scoreboard players add @s economy 4
execute if score @s decision_task matches 207 run scoreboard players add @s fame 2
execute if score @s decision_task matches 207 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 207 run tellraw @s [{"text":"你选择了小额分批扶持：","color":"aqua"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 207 run scoreboard players set @s decision_task 0

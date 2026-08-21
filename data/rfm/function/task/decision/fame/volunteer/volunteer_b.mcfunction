#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 106 run scoreboard players add @s fame 4
execute if score @s decision_task matches 106 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 106 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 106 run tellraw @s [{"text":"你选择了低调安排社区服务：","color":"aqua"},{"text":"名誉 +4","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"}]
execute if score @s decision_task matches 106 run scoreboard players set @s decision_task 0

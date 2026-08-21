#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 111 run scoreboard players add @s fame 6
execute if score @s decision_task matches 111 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 111 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 111 run tellraw @s [{"text":"你选择了提出完整青年计划：","color":"red"},{"text":"名誉 +6","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -4","color":"yellow"}]
execute if score @s decision_task matches 111 run scoreboard players set @s decision_task 0

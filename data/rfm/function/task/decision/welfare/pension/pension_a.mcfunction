#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 305 run scoreboard players add @s welfare 10
execute if score @s decision_task matches 305 run scoreboard players add @s fame 2
execute if score @s decision_task matches 305 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 305 run tellraw @s [{"text":"你选择了建设社区养老中心：","color":"red"},{"text":"民生 +10","color":"red"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -4","color":"yellow"}]
execute if score @s decision_task matches 305 run scoreboard players set @s decision_task 0

#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 314 run scoreboard players add @s welfare 12
execute if score @s decision_task matches 314 run scoreboard players add @s fame 2
execute if score @s decision_task matches 314 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 314 run tellraw @s [{"text":"你选择了快速建设避难点：","color":"red"},{"text":"民生 +12","color":"red"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 314 run scoreboard players set @s decision_task 0

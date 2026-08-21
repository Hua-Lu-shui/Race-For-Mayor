#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 118 run scoreboard players add @s fame 8
execute if score @s decision_task matches 118 run scoreboard players add @s economy 4
execute if score @s decision_task matches 118 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 118 run tellraw @s [{"text":"你选择了全面接管线上咨询：","color":"red"},{"text":"名誉 +8","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -6","color":"red"}]
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0

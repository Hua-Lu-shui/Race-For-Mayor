#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 409 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 409 run scoreboard players add @s fame 6
execute if score @s decision_task matches 409 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 409 run tellraw @s [{"text":"你选择了公开实时监测网：","color":"red"},{"text":"生态 +6","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 +6","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 -4","color":"yellow"}]
execute if score @s decision_task matches 409 run scoreboard players set @s decision_task 0

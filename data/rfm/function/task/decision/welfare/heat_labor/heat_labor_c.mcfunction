#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 317 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 317 run scoreboard players add @s economy 4
execute if score @s decision_task matches 317 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 317 run tellraw @s [{"text":"你选择了只发布防暑建议：","color":"green"},{"text":"民生 -6","color":"red"},{"text":"，","color":"gray"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0

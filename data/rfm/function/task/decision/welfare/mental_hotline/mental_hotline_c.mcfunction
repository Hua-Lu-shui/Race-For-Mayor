#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 318 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 318 run scoreboard players add @s economy 6
execute if score @s decision_task matches 318 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 318 run tellraw @s [{"text":"你选择了仅发放现有机构联络手册：","color":"green"},{"text":"民生 -6","color":"red"},{"text":"，","color":"gray"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 318 run scoreboard players set @s decision_task 0

#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 308 run scoreboard players add @s economy 2
execute if score @s decision_task matches 308 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 308 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 308 run tellraw @s [{"text":"你选择了先宣传提醒：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 308 run scoreboard players set @s decision_task 0

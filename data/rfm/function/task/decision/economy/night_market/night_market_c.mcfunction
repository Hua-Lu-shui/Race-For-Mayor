#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 205 run scoreboard players add @s fame 2
execute if score @s decision_task matches 205 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 205 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 205 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 205 run tellraw @s [{"text":"你选择了严格限制流动摊贩：","color":"green"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"生态 +6","color":"green"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0

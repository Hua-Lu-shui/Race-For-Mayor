#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 411 run scoreboard players add @s economy 2
execute if score @s decision_task matches 411 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 411 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 411 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 411 run tellraw @s [{"text":"你选择了只倡导自愿减量：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"}]
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0

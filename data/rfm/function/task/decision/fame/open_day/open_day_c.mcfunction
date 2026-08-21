#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 109 run scoreboard players add @s economy 2
execute if score @s decision_task matches 109 run scoreboard players add @s fame 2
execute if score @s decision_task matches 109 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 109 run tellraw @s [{"text":"你选择了只发布线上报告：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 109 run scoreboard players set @s decision_task 0

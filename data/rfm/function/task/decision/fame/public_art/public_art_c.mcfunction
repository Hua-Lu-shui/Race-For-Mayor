#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 119 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 119 run scoreboard players add @s economy 6
execute if score @s decision_task matches 119 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 119 run tellraw @s [{"text":"你选择了取消项目恢复广场原貌：","color":"green"},{"text":"名誉 -4","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -2","color":"red"}]
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0

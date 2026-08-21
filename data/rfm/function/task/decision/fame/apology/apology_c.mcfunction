#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s economy 2
execute if score @s decision_task matches 107 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 107 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 107 run tellraw @s [{"text":"你选择了强调客观困难：","color":"green"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 -4","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 -4","color":"red"}]
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0

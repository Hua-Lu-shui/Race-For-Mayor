#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 205 run scoreboard players add @s economy 10
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 205 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 205 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 205 run tellraw @s [{"text":"你选择了全面开放大型夜市：","color":"red"},{"text":"经济 +10","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0

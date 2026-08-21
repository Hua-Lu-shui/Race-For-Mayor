#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players add @s economy 4
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 220 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 220 run tellraw @s [{"text":"你选择了周末开放小型创意市集：","color":"aqua"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"}]
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0

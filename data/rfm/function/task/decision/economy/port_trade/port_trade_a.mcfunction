#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 12
execute if score @s decision_task matches 213 run scoreboard players add @s fame 2
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 213 run tellraw @s [{"text":"你选择了全力加入贸易通道：","color":"red"},{"text":"经济 +12","color":"yellow"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"}]
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0

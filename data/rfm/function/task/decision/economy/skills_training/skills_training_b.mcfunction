#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 214 run scoreboard players add @s economy 2
execute if score @s decision_task matches 214 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 214 run scoreboard players add @s fame 2
execute if score @s decision_task matches 214 run tellraw @s [{"text":"你选择了企业和政府分担：","color":"aqua"},{"text":"经济 +2","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"}]
execute if score @s decision_task matches 214 run scoreboard players set @s decision_task 0

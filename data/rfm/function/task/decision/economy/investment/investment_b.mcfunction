#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 202 run scoreboard players add @s economy 6
execute if score @s decision_task matches 202 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 202 run tellraw @s [{"text":"你选择了扶持本地创业园：","color":"aqua"},{"text":"经济 +6","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0

#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 415 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 415 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 415 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 415 run tellraw @s [{"text":"你选择了高峰期试行限制：","color":"aqua"},{"text":"生态 +4","color":"green"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"经济 -2","color":"yellow"}]
execute if score @s decision_task matches 415 run scoreboard players set @s decision_task 0

#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 404 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 404 run scoreboard players add @s fame 2
execute if score @s decision_task matches 404 run tellraw @s [{"text":"你选择了重点社区试点：","color":"aqua"},{"text":"生态 +4","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 +2","color":"aqua"}]
execute if score @s decision_task matches 404 run scoreboard players set @s decision_task 0

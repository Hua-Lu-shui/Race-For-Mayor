#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 409 run scoreboard players add @s economy 8
execute if score @s decision_task matches 409 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 409 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 409 run tellraw @s [{"text":"你选择了维持月度报告：","color":"green"},{"text":"经济 +8","color":"yellow"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"},{"text":"，","color":"gray"},{"text":"名誉 -2","color":"aqua"}]
execute if score @s decision_task matches 409 run scoreboard players set @s decision_task 0

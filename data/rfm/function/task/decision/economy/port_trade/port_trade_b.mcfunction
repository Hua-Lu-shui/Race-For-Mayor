#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 8
execute if score @s decision_task matches 213 run scoreboard players add @s fame 2
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 213 run tellraw @s [{"translate":"rfm.text.06aa7d9da2b2","color":"aqua"},{"translate":"rfm.text.9f3dca44000b","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"}]
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0

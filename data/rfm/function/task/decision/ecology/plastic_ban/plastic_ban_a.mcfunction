#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 411 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 411 run scoreboard players add @s fame 2
execute if score @s decision_task matches 411 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 411 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 411 run tellraw @s [{"translate":"rfm.text.5aeb7d5e4a05","color":"red"},{"translate":"rfm.text.c0e789ceb9a3","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0

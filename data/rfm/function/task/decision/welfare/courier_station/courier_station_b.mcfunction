#执行民生决策任务的B方案并结算属性
execute if score @s decision_task matches 316 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 316 run scoreboard players add @s fame 2
execute if score @s decision_task matches 316 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 316 run tellraw @s [{"translate":"rfm.text.13ccab769b0b","color":"aqua"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 316 run scoreboard players set @s decision_task 0

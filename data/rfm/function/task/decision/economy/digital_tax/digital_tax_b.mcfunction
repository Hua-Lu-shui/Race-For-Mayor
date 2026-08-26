#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 212 run scoreboard players add @s economy 6
execute if score @s decision_task matches 212 run scoreboard players add @s fame 2
execute if score @s decision_task matches 212 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 212 run tellraw @s [{"translate":"rfm.text.d70f11ddd2a8","color":"aqua"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0

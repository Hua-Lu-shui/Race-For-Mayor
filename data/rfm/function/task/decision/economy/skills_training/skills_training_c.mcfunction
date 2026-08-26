#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 214 run scoreboard players add @s economy 6
execute if score @s decision_task matches 214 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 214 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 214 run tellraw @s [{"translate":"rfm.text.a6e82a19e4d4","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 214 run scoreboard players set @s decision_task 0

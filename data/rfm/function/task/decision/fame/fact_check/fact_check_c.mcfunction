#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 114 run scoreboard players add @s economy 4
execute if score @s decision_task matches 114 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 114 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 114 run tellraw @s [{"translate":"rfm.text.7bb08c1da6f8","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 114 run scoreboard players set @s decision_task 0

#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 119 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 119 run scoreboard players add @s economy 6
execute if score @s decision_task matches 119 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 119 run tellraw @s [{"translate":"rfm.text.a1c1d60aa606","color":"green"},{"translate":"rfm.text.87ea5bdc6ed8","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0

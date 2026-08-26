#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 215 run scoreboard players add @s economy 6
execute if score @s decision_task matches 215 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 215 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 215 run tellraw @s [{"translate":"rfm.text.287ef1d15c3a","color":"red"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 215 run scoreboard players set @s decision_task 0

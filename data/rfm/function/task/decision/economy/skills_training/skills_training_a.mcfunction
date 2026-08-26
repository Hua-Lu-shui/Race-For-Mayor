#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 214 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 214 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 214 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 214 run tellraw @s [{"translate":"rfm.text.189974683548","color":"red"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 214 run scoreboard players set @s decision_task 0

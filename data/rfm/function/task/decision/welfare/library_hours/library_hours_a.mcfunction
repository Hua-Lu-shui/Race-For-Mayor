#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 315 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 315 run scoreboard players add @s fame 4
execute if score @s decision_task matches 315 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 315 run tellraw @s [{"translate":"rfm.text.a2ba7497bb06","color":"red"},{"translate":"rfm.text.37adbac8f2b5","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0

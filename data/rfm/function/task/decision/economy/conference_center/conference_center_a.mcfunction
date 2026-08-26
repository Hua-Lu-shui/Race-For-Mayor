#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 211 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 211 run scoreboard players add @s fame 10
execute if score @s decision_task matches 211 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 211 run tellraw @s [{"translate":"rfm.text.b9052f9a8d12","color":"red"},{"translate":"rfm.text.72d780b63e29","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.9154b82aecbd","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.bf455db6070a","color":"red"}]
execute if score @s decision_task matches 211 run scoreboard players set @s decision_task 0

#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 319 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 319 run scoreboard players add @s fame 4
execute if score @s decision_task matches 319 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 319 run tellraw @s [{"translate":"rfm.text.deb7a3dd9942","color":"red"},{"translate":"rfm.text.84b26502d2e1","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 319 run scoreboard players set @s decision_task 0

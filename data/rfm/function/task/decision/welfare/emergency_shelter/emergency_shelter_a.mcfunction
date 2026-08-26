#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 314 run scoreboard players add @s welfare 12
execute if score @s decision_task matches 314 run scoreboard players add @s fame 2
execute if score @s decision_task matches 314 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 314 run tellraw @s [{"translate":"rfm.text.8d9e5caa426e","color":"red"},{"translate":"rfm.text.8ce4d75a69a2","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 314 run scoreboard players set @s decision_task 0

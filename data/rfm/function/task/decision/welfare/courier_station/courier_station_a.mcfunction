#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 316 run scoreboard players add @s welfare 10
execute if score @s decision_task matches 316 run scoreboard players add @s fame 2
execute if score @s decision_task matches 316 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 316 run tellraw @s [{"translate":"rfm.text.876c56b14865","color":"red"},{"translate":"rfm.text.7679d74c1c81","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 316 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 402 run scoreboard players add @s ecology 12
execute if score @s decision_task matches 402 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 402 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 402 run tellraw @s [{"translate":"rfm.text.5ab160cf26b2","color":"red"},{"translate":"rfm.text.29b8e21b179b","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 402 run scoreboard players set @s decision_task 0

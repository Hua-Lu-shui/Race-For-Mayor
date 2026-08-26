#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 420 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 420 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 420 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 420 run tellraw @s [{"translate":"rfm.text.6062c298b8ff","color":"red"},{"translate":"rfm.text.c0e789ceb9a3","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.e187c8894717","color":"yellow"}]
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0

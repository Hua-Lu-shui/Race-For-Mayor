#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 408 run scoreboard players add @s economy 6
execute if score @s decision_task matches 408 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 408 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 408 run tellraw @s [{"translate":"rfm.text.91db49ab6570","color":"green"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0

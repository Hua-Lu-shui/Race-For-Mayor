#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 105 run scoreboard players add @s fame 4
execute if score @s decision_task matches 105 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 105 run tellraw @s [{"translate":"rfm.text.45197c42420f","color":"red"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 105 run scoreboard players set @s decision_task 0

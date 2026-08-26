#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players add @s economy 4
execute if score @s decision_task matches 219 run scoreboard players add @s fame 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 219 run tellraw @s [{"translate":"rfm.text.5808dba9ad18","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0

#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 208 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 208 run scoreboard players add @s fame 4
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 208 run tellraw @s [{"translate":"rfm.text.6f81933ad57e","color":"red"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0

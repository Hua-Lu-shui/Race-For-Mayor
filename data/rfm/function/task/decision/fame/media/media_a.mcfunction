#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 101 run scoreboard players add @s fame 6
execute if score @s decision_task matches 101 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 101 run tellraw @s [{"translate":"rfm.text.cdc720403534","color":"red"},{"translate":"rfm.text.546e37949bb5","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0

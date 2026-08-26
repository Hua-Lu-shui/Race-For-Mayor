#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s fame 6
execute if score @s decision_task matches 204 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 204 run tellraw @s [{"translate":"rfm.text.8d7ff85e3ec2","color":"green"},{"translate":"rfm.text.546e37949bb5","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
#重置决策任务计分板
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
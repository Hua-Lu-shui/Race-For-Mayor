#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 202 run scoreboard players add @s economy 6
execute if score @s decision_task matches 202 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 202 run tellraw @s [{"translate":"rfm.text.0ce953858343","color":"aqua"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0

#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 412 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 412 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 412 run tellraw @s [{"translate":"rfm.text.376d6136f1f7","color":"aqua"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 412 run scoreboard players set @s decision_task 0

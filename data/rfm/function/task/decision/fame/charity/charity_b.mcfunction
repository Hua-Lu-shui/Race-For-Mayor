#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 104 run scoreboard players add @s fame 4
execute if score @s decision_task matches 104 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 104 run tellraw @s [{"translate":"rfm.text.31c3312803fd","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 104 run scoreboard players set @s decision_task 0

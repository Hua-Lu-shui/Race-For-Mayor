#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s fame 4
execute if score @s decision_task matches 107 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 107 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 107 run tellraw @s [{"translate":"rfm.text.658749a812b0","color":"aqua"},{"translate":"rfm.text.ddb7b732be21","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.78f8777cc0a3","color":"yellow"}]
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0

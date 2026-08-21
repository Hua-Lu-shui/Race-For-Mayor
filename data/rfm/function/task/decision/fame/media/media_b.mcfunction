#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 101 run scoreboard players add @s fame 4
execute if score @s decision_task matches 101 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 101 run tellraw @s [{"text":"你选择了稳健回应问题：","color":"aqua"},{"text":"名誉 +4","color":"aqua"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
execute if score @s decision_task matches 101 run scoreboard players set @s decision_task 0

#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 420 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 420 run scoreboard players add @s fame 4
execute if score @s decision_task matches 420 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 420 run tellraw @s {"text":"你选择了公共工程先执行三成回用：生态 +4，名誉 +4，经济 -2","color":"yellow"}
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0

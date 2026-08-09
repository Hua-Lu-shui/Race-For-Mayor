#执行生态决策任务的B方案并结算属性
execute if score @s decision_task matches 420 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 420 run scoreboard players add @s fame 2
execute if score @s decision_task matches 420 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 420 run tellraw @s {"text":"你选择了公共工程先执行三成回用：生态 +2，名誉 +2，经济 -1","color":"yellow"}
execute if score @s decision_task matches 420 run scoreboard players set @s decision_task 0

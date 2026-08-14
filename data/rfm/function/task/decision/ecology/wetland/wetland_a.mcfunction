#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 408 run scoreboard players add @s ecology 10
execute if score @s decision_task matches 408 run scoreboard players add @s fame 2
execute if score @s decision_task matches 408 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 408 run tellraw @s {"text":"你选择了划为永久保护区：生态 +10，名誉 +2，经济 -6","color":"yellow"}
execute if score @s decision_task matches 408 run scoreboard players set @s decision_task 0

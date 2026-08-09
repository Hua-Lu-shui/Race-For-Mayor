#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 417 run scoreboard players add @s ecology 5
execute if score @s decision_task matches 417 run scoreboard players add @s fame 1
execute if score @s decision_task matches 417 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 417 run tellraw @s {"text":"你选择了封湖开展全面清除：生态 +5，名誉 +1，经济 -3","color":"yellow"}
execute if score @s decision_task matches 417 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 414 run scoreboard players add @s ecology 3
execute if score @s decision_task matches 414 run scoreboard players add @s fame 1
execute if score @s decision_task matches 414 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 414 run tellraw @s {"text":"你选择了组建专职巡查队：生态 +3，名誉 +1，经济 -2","color":"yellow"}
execute if score @s decision_task matches 414 run scoreboard players set @s decision_task 0

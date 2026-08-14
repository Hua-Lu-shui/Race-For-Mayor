#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 202 run scoreboard players add @s economy 12
execute if score @s decision_task matches 202 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 202 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 202 run tellraw @s {"text":"你选择了引进大型工业园：经济 +12，生态 -4，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 202 run scoreboard players set @s decision_task 0

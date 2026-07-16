#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 4
execute if score @s decision_task matches 213 run scoreboard players add @s fame 1
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了先开放部分线路：经济 +4，名誉 +1，生态 -1","color":"yellow"}
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0

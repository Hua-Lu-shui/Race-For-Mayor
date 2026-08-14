#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 8
execute if score @s decision_task matches 213 run scoreboard players add @s fame 2
execute if score @s decision_task matches 213 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 213 run tellraw @s {"text":"你选择了先开放部分线路：经济 +8，名誉 +2，生态 -2","color":"yellow"}
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0

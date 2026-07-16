#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 211 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 211 run scoreboard players add @s fame 3
execute if score @s decision_task matches 211 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 211 run tellraw @s {"text":"你选择了先改造现有场馆：经济 -2，名誉 +3，民生 -1","color":"yellow"}
execute if score @s decision_task matches 211 run scoreboard players set @s decision_task 0

#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 215 run scoreboard players add @s economy 6
execute if score @s decision_task matches 215 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 215 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 215 run tellraw @s {"text":"你选择了优先本地企业：经济 +6，民生 +4，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 215 run scoreboard players set @s decision_task 0

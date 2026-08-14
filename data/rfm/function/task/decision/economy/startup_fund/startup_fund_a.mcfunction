#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 207 run scoreboard players add @s economy 4
execute if score @s decision_task matches 207 run scoreboard players add @s fame 2
execute if score @s decision_task matches 207 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 207 run tellraw @s {"text":"你选择了设立大额基金：经济 +4，名誉 +2，民生 -4","color":"yellow"}
execute if score @s decision_task matches 207 run scoreboard players set @s decision_task 0

#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 207 run scoreboard players add @s economy 2
execute if score @s decision_task matches 207 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 207 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 207 run tellraw @s {"text":"你选择了改为贷款担保：经济 +2，民生 +2，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 207 run scoreboard players set @s decision_task 0

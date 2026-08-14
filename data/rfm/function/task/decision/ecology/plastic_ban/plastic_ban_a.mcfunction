#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 411 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 411 run scoreboard players add @s fame 2
execute if score @s decision_task matches 411 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 411 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 411 run tellraw @s {"text":"你选择了立即全面禁塑：生态 +8，名誉 +2，经济 -4，民生 -4","color":"yellow"}
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0

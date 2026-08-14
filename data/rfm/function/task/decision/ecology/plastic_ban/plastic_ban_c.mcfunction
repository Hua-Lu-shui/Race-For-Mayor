#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 411 run scoreboard players add @s economy 2
execute if score @s decision_task matches 411 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 411 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 411 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 411 run tellraw @s {"text":"你选择了只倡导自愿减量：经济 +2，生态 -2，名誉 -2，民生 +4","color":"yellow"}
execute if score @s decision_task matches 411 run scoreboard players set @s decision_task 0

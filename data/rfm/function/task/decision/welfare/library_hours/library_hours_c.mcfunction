#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 315 run scoreboard players add @s economy 2
execute if score @s decision_task matches 315 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 315 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 315 run tellraw @s {"text":"你选择了维持现有时间：经济 +2，民生 -1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0

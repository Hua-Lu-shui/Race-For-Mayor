#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 309 run scoreboard players add @s economy 4
execute if score @s decision_task matches 309 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 309 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 309 run tellraw @s {"text":"你选择了维持现状：经济 +4，民生 -4，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 309 run scoreboard players set @s decision_task 0

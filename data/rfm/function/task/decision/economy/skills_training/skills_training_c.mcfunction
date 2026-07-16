#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 214 run scoreboard players add @s economy 3
execute if score @s decision_task matches 214 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 214 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 214 run tellraw @s {"text":"你选择了只提供线上课程：经济 +3，民生 -1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 214 run scoreboard players set @s decision_task 0

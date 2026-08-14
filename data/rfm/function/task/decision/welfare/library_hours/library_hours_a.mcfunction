#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 315 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 315 run scoreboard players add @s fame 4
execute if score @s decision_task matches 315 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 315 run tellraw @s {"text":"你选择了延长所有馆开放：民生 +6，名誉 +4，经济 -4","color":"yellow"}
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0

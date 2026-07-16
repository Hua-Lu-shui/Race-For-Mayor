#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 315 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 315 run scoreboard players add @s fame 2
execute if score @s decision_task matches 315 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 315 run tellraw @s {"text":"你选择了延长所有馆开放：民生 +3，名誉 +2，经济 -2","color":"yellow"}
execute if score @s decision_task matches 315 run scoreboard players set @s decision_task 0

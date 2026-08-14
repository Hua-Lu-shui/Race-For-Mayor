#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 318 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 318 run scoreboard players add @s economy 6
execute if score @s decision_task matches 318 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 318 run tellraw @s {"text":"你选择了仅发放现有机构联络手册：民生 -6，经济 +6，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 318 run scoreboard players set @s decision_task 0

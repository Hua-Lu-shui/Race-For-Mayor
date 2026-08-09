#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 319 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 319 run scoreboard players add @s fame 2
execute if score @s decision_task matches 319 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 319 run tellraw @s {"text":"你选择了全城公共厕所通宵开放：民生 +4，名誉 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 319 run scoreboard players set @s decision_task 0

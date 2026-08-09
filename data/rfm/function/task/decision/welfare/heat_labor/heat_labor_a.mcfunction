#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 317 run scoreboard players add @s welfare 5
execute if score @s decision_task matches 317 run scoreboard players add @s fame 2
execute if score @s decision_task matches 317 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 317 run tellraw @s {"text":"你选择了高温时段强制停工并补贴工资：民生 +5，名誉 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 317 run scoreboard players set @s decision_task 0

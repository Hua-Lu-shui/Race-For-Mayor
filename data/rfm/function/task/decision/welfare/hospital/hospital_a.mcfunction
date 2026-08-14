#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 301 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 301 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 301 run scoreboard players add @s fame 2
execute if score @s decision_task matches 301 run tellraw @s {"text":"你选择了新建多所社区医院：民生 +8，经济 -6，名誉 +2","color":"yellow"}
execute if score @s decision_task matches 301 run scoreboard players set @s decision_task 0

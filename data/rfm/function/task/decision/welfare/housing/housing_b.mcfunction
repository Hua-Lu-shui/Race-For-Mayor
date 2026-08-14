#执行民生决策任务的B方案并结算属性
execute if score @s decision_task matches 302 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 302 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 302 run scoreboard players add @s fame 2
execute if score @s decision_task matches 302 run tellraw @s {"text":"你选择了租房补贴和限价房：民生 +4，经济 -2，名誉 +2","color":"yellow"}
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0

#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 418 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 418 run scoreboard players add @s economy 4
execute if score @s decision_task matches 418 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 418 run tellraw @s {"text":"你选择了关闭菜园并迁走居民活动：生态 -2，经济 +4，民生 +4","color":"yellow"}
execute if score @s decision_task matches 418 run scoreboard players set @s decision_task 0

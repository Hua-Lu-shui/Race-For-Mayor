#执行生态决策任务的C方案并结算属性
execute if score @s decision_task matches 418 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 418 run scoreboard players add @s economy 2
execute if score @s decision_task matches 418 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 418 run tellraw @s {"text":"你选择了关闭菜园并迁走居民活动：生态 -1，经济 +2，民生 +2","color":"yellow"}
execute if score @s decision_task matches 418 run scoreboard players set @s decision_task 0

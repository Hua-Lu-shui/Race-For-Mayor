#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 403 run scoreboard players add @s ecology 6
execute if score @s decision_task matches 403 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 403 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 403 run tellraw @s {"text":"你选择了全部改造成城市公园：生态 +6，民生 +4，经济 -6","color":"yellow"}
execute if score @s decision_task matches 403 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 416 run scoreboard players add @s ecology 10
execute if score @s decision_task matches 416 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 416 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 416 run tellraw @s {"text":"你选择了深夜强制关闭广告与景观灯：生态 +10，民生 +4，经济 -6","color":"yellow"}
execute if score @s decision_task matches 416 run scoreboard players set @s decision_task 0

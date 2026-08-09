#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 218 run scoreboard players add @s economy 5
execute if score @s decision_task matches 218 run scoreboard players add @s fame 2
execute if score @s decision_task matches 218 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 218 run tellraw @s {"text":"你选择了开放中心城区全天测试：经济 +5，名誉 +2，民生 -3","color":"yellow"}
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0

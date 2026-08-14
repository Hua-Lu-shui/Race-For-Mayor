#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 218 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 218 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 218 run scoreboard players add @s fame 2
execute if score @s decision_task matches 218 run tellraw @s {"text":"你选择了暂缓所有道路测试：经济 -4，民生 +6，名誉 +2","color":"yellow"}
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0

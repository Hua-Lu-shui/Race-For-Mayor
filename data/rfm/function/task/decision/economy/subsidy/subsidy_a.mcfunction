#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 203 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 203 run scoreboard players add @s welfare 8
execute if score @s decision_task matches 203 run scoreboard players add @s fame 4
execute if score @s decision_task matches 203 run tellraw @s {"text":"你选择了大额补贴重点企业：经济 -6，民生 +8，名誉 +4","color":"yellow"}
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0

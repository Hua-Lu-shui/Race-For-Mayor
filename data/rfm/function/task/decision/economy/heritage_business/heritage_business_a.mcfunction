#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players add @s economy 8
execute if score @s decision_task matches 219 run scoreboard players add @s fame 4
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 6
execute if score @s decision_task matches 219 run tellraw @s {"text":"你选择了成立公营公司整体接管：经济 +8，名誉 +4，民生 -6","color":"yellow"}
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0

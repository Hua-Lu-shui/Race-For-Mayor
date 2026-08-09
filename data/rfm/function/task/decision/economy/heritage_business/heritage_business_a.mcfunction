#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 219 run scoreboard players add @s economy 4
execute if score @s decision_task matches 219 run scoreboard players add @s fame 2
execute if score @s decision_task matches 219 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 219 run tellraw @s {"text":"你选择了成立公营公司整体接管：经济 +4，名誉 +2，民生 -3","color":"yellow"}
execute if score @s decision_task matches 219 run scoreboard players set @s decision_task 0

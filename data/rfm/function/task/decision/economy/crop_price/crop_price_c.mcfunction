#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 217 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 217 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 217 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 217 run tellraw @s {"text":"你选择了交由市场自行消化：经济 -2，生态 +2，民生 +2","color":"yellow"}
execute if score @s decision_task matches 217 run scoreboard players set @s decision_task 0

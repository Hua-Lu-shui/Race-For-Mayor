#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 206 run scoreboard players add @s economy 8
execute if score @s decision_task matches 206 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 206 run tellraw @s {"text":"你选择了快速批准园区：经济 +8，民生 -4，生态 -2","color":"yellow"}
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0

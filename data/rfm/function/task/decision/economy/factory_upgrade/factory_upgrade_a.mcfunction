#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 209 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 209 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 209 run tellraw @s {"text":"你选择了大规模设备补贴：经济 -2，民生 +3，生态 -1","color":"yellow"}
execute if score @s decision_task matches 209 run scoreboard players set @s decision_task 0

#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 217 run scoreboard players add @s economy 8
execute if score @s decision_task matches 217 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 217 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 217 run tellraw @s [{"text":"你选择了政府按保护价全部收购：","color":"red"},{"text":"经济 +8","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -4","color":"green"}]
execute if score @s decision_task matches 217 run scoreboard players set @s decision_task 0

#执行生态决策任务的A方案并结算属性
execute if score @s decision_task matches 413 run scoreboard players add @s ecology 8
execute if score @s decision_task matches 413 run scoreboard players add @s economy 4
execute if score @s decision_task matches 413 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 413 run tellraw @s [{"text":"你选择了强推阶梯水价：","color":"red"},{"text":"生态 +8","color":"green"},{"text":"，","color":"gray"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 -4","color":"red"}]
execute if score @s decision_task matches 413 run scoreboard players set @s decision_task 0

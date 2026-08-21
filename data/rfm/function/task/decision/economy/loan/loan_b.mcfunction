#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s economy 4
execute if score @s decision_task matches 204 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 204 run tellraw @s [{"text":"你选择了折中：","color":"aqua"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"}]
#重置决策任务计分板
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
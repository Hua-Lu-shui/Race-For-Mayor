#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 220 run scoreboard players add @s ecology 4
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 220 run tellraw @s {"text":"你选择了封存并保留应急用途：经济 -2，生态 +4，民生 +4","color":"yellow"}
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0

#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players add @s economy 5
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 220 run scoreboard players remove @s ecology 3
execute if score @s decision_task matches 220 run tellraw @s {"text":"你选择了改造成大型地下商业街：经济 +5，民生 +1，生态 -3","color":"yellow"}
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0

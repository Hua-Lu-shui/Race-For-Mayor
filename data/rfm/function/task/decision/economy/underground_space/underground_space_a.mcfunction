#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 220 run scoreboard players add @s economy 10
execute if score @s decision_task matches 220 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 220 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 220 run tellraw @s [{"text":"你选择了改造成大型地下商业街：","color":"red"},{"text":"经济 +10","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +2","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -6","color":"green"}]
execute if score @s decision_task matches 220 run scoreboard players set @s decision_task 0

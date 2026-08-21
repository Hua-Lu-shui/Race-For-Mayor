#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 304 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 304 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 304 run tellraw @s [{"text":"你选择了大幅增加公交线路：","color":"red"},{"text":"民生 +6","color":"red"},{"text":"，","color":"gray"},{"text":"生态 -2","color":"green"},{"text":"，","color":"gray"},{"text":"经济 -6","color":"yellow"}]
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0

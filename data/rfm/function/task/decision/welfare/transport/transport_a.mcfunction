#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 304 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 304 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 304 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 304 run tellraw @s {"text":"你选择了大幅增加公交线路：民生 +3，生态 -1，经济 -3","color":"yellow"}
execute if score @s decision_task matches 304 run scoreboard players set @s decision_task 0

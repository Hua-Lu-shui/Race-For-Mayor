#执行民生决策任务的A方案并结算属性
execute if score @s decision_task matches 318 run scoreboard players add @s welfare 10
execute if score @s decision_task matches 318 run scoreboard players add @s fame 2
execute if score @s decision_task matches 318 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 318 run tellraw @s {"text":"你选择了建立全天专业危机热线：民生 +10，名誉 +2，经济 -6","color":"yellow"}
execute if score @s decision_task matches 318 run scoreboard players set @s decision_task 0

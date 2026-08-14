#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 114 run scoreboard players add @s economy 4
execute if score @s decision_task matches 114 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 114 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 114 run tellraw @s {"text":"你选择了暂不加入平台：经济 +4，名誉 -4，民生 -2","color":"yellow"}
execute if score @s decision_task matches 114 run scoreboard players set @s decision_task 0

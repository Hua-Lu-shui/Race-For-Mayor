#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 118 run scoreboard players add @s fame 4
execute if score @s decision_task matches 118 run scoreboard players add @s economy 2
execute if score @s decision_task matches 118 run scoreboard players remove @s welfare 3
execute if score @s decision_task matches 118 run tellraw @s {"text":"你选择了全面接管线上咨询：名誉 +4，经济 +2，民生 -3","color":"yellow"}
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0

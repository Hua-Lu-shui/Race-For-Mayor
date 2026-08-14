#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 106 run scoreboard players add @s fame 8
execute if score @s decision_task matches 106 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 106 run scoreboard players remove @s economy 6
execute if score @s decision_task matches 106 run tellraw @s {"text":"你选择了发动大规模宣传：名誉 +8，民生 +4，经济 -6","color":"yellow"}
execute if score @s decision_task matches 106 run scoreboard players set @s decision_task 0

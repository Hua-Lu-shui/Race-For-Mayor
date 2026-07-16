#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s fame 1
execute if score @s decision_task matches 107 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 107 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 107 run tellraw @s {"text":"你选择了主动承认并给出补偿：名誉 +1，民生 +3，经济 -2","color":"yellow"}
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0

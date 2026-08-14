#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 120 run scoreboard players remove @s fame 6
execute if score @s decision_task matches 120 run scoreboard players add @s economy 2
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 120 run tellraw @s {"text":"你选择了判决前继续保留荣誉：名誉 -6，经济 +2，民生 +6","color":"yellow"}
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0

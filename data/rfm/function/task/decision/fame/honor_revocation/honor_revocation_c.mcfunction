#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 120 run scoreboard players remove @s fame 3
execute if score @s decision_task matches 120 run scoreboard players add @s economy 1
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 3
execute if score @s decision_task matches 120 run tellraw @s {"text":"你选择了判决前继续保留荣誉：名誉 -3，经济 +1，民生 +3","color":"yellow"}
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0

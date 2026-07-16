#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 108 run scoreboard players add @s fame 1
execute if score @s decision_task matches 108 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 108 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 108 run tellraw @s {"text":"你选择了婉拒公开背书：名誉 +1，民生 +1，经济 -1","color":"yellow"}
execute if score @s decision_task matches 108 run scoreboard players set @s decision_task 0

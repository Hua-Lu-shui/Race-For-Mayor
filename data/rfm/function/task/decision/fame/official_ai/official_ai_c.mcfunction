#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 118 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 118 run scoreboard players add @s economy 2
execute if score @s decision_task matches 118 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 118 run tellraw @s {"text":"你选择了坚持全部人工答复：名誉 -2，经济 +2，民生 +2","color":"yellow"}
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0

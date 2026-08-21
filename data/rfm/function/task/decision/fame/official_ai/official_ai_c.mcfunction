#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 118 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 118 run scoreboard players add @s economy 4
execute if score @s decision_task matches 118 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 118 run tellraw @s [{"text":"你选择了坚持全部人工答复：","color":"green"},{"text":"名誉 -4","color":"aqua"},{"text":"，","color":"gray"},{"text":"经济 +4","color":"yellow"},{"text":"，","color":"gray"},{"text":"民生 +4","color":"red"}]
execute if score @s decision_task matches 118 run scoreboard players set @s decision_task 0

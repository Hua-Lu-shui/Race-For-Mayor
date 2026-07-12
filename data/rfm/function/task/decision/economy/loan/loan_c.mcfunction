#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s fame 3
execute if score @s decision_task matches 204 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 204 run tellraw @s {"text":"你选择了保守：名誉 +3，经济 -1","color":"yellow"}
#重置决策任务计分板
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
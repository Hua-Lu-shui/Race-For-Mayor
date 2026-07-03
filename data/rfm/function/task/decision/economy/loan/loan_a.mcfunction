#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s economy 4
execute if score @s decision_task matches 204 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 204 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 204 run tellraw @s {"text":"你选择了激进：经济 +4，民生 +2，名誉 -1","color":"yellow"}
#重置决策任务计分板
scoreboard players set @s decision_task 0
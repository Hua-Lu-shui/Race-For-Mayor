#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s economy 12
execute if score @s decision_task matches 204 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 204 run scoreboard players remove @s fame 10
execute if score @s decision_task matches 204 run tellraw @s {"text":"你选择了激进：经济 +12，民生 +4，名誉 -10","color":"yellow"}
#重置决策任务计分板
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
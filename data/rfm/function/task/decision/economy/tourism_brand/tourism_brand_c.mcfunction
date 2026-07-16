#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 208 run scoreboard players add @s economy 1
execute if score @s decision_task matches 208 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 208 run scoreboard players remove @s fame 1
execute if score @s decision_task matches 208 run tellraw @s {"text":"你选择了只维护现有景点：经济 +1，民生 +1，名誉 -1","color":"yellow"}
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0

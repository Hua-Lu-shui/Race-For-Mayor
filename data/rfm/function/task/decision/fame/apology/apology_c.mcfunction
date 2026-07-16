#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s economy 1
execute if score @s decision_task matches 107 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 107 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 107 run tellraw @s {"text":"你选择了强调客观困难：经济 +1，名誉 -2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0

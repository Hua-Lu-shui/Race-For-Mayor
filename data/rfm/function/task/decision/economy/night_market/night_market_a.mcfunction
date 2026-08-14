#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 205 run scoreboard players add @s economy 10
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 205 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 205 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 205 run tellraw @s {"text":"你选择了全面开放大型夜市：经济 +10，民生 +2，生态 -4，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0

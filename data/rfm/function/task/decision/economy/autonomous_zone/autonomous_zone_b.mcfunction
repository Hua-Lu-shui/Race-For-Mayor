#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 218 run scoreboard players add @s economy 2
execute if score @s decision_task matches 218 run scoreboard players add @s fame 2
execute if score @s decision_task matches 218 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 218 run tellraw @s {"text":"你选择了只开放封闭线路试运行：经济 +2，名誉 +2，民生 -1","color":"yellow"}
execute if score @s decision_task matches 218 run scoreboard players set @s decision_task 0

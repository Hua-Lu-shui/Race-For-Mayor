#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 208 run scoreboard players add @s economy 4
execute if score @s decision_task matches 208 run scoreboard players add @s fame 2
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 208 run tellraw @s {"text":"你选择了主推周末短途游：经济 +4，名誉 +2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0

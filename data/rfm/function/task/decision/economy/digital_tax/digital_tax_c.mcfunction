#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 212 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 212 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 212 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 212 run tellraw @s {"text":"你选择了继续人工申报：民生 +4，经济 -2，名誉 -2","color":"yellow"}
execute if score @s decision_task matches 212 run scoreboard players set @s decision_task 0

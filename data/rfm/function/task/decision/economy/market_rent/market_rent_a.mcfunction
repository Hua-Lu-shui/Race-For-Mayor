#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 210 run scoreboard players add @s welfare 6
execute if score @s decision_task matches 210 run scoreboard players add @s fame 2
execute if score @s decision_task matches 210 run scoreboard players remove @s economy 8
execute if score @s decision_task matches 210 run tellraw @s {"text":"你选择了强制大幅降租：民生 +6，名誉 +2，经济 -8","color":"yellow"}
execute if score @s decision_task matches 210 run scoreboard players set @s decision_task 0

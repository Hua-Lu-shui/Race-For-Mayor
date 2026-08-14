#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 103 run scoreboard players add @s economy 4
execute if score @s decision_task matches 103 run scoreboard players remove @s fame 4
execute if score @s decision_task matches 103 run tellraw @s {"text":"你选择了维持项目推进：经济 +4，名誉 -4","color":"yellow"}
execute if score @s decision_task matches 103 run scoreboard players set @s decision_task 0

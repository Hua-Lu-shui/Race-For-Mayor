#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 103 run scoreboard players add @s fame 3
execute if score @s decision_task matches 103 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 103 run tellraw @s {"text":"你选择了全面调查旧项目：名誉 +3，经济 -2","color":"yellow"}
execute if score @s decision_task matches 103 run scoreboard players set @s decision_task 0

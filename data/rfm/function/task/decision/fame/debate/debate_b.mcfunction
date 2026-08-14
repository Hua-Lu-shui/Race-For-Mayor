#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 102 run scoreboard players add @s fame 4
execute if score @s decision_task matches 102 run scoreboard players add @s economy 2
execute if score @s decision_task matches 102 run tellraw @s {"text":"你选择了阐述自己的方案：名誉 +4，经济 +2","color":"yellow"}
execute if score @s decision_task matches 102 run scoreboard players set @s decision_task 0

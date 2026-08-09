#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 119 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 119 run scoreboard players add @s economy 3
execute if score @s decision_task matches 119 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 119 run tellraw @s {"text":"你选择了取消项目恢复广场原貌：名誉 -2，经济 +3，民生 -1","color":"yellow"}
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0

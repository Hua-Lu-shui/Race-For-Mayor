#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 107 run scoreboard players add @s fame 4
execute if score @s decision_task matches 107 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 107 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 107 run tellraw @s {"text":"你选择了解释原因并公布时间表：名誉 +4，民生 +2，经济 -2","color":"yellow"}
execute if score @s decision_task matches 107 run scoreboard players set @s decision_task 0

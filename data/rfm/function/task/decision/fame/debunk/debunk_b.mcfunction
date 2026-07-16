#执行名誉决策任务的B方案并结算属性
execute if score @s decision_task matches 110 run scoreboard players add @s fame 3
execute if score @s decision_task matches 110 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 110 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 110 run tellraw @s {"text":"你选择了公布账目让媒体核查：名誉 +3，经济 -1，民生 +1","color":"yellow"}
execute if score @s decision_task matches 110 run scoreboard players set @s decision_task 0

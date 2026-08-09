#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 120 run scoreboard players add @s fame 5
execute if score @s decision_task matches 120 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 120 run scoreboard players remove @s economy 3
execute if score @s decision_task matches 120 run tellraw @s {"text":"你选择了立即撤销并公开除名：名誉 +5，民生 +2，经济 -3","color":"yellow"}
execute if score @s decision_task matches 120 run scoreboard players set @s decision_task 0

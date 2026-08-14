#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 108 run scoreboard players add @s fame 8
execute if score @s decision_task matches 108 run scoreboard players add @s economy 4
execute if score @s decision_task matches 108 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 108 run tellraw @s {"text":"你选择了高调同台造势：名誉 +8，经济 +4，民生 -4","color":"yellow"}
execute if score @s decision_task matches 108 run scoreboard players set @s decision_task 0

#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 113 run scoreboard players add @s fame 1
execute if score @s decision_task matches 113 run scoreboard players add @s economy 1
execute if score @s decision_task matches 113 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 113 run tellraw @s {"text":"你选择了改为线上直播：名誉 +1，经济 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 113 run scoreboard players set @s decision_task 0

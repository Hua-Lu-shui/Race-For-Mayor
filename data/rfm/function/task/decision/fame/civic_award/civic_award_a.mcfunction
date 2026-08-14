#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 117 run scoreboard players add @s fame 10
execute if score @s decision_task matches 117 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 117 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 117 run tellraw @s {"text":"你选择了全程公开并由市民投票：名誉 +10，民生 +2，经济 -4","color":"yellow"}
execute if score @s decision_task matches 117 run scoreboard players set @s decision_task 0

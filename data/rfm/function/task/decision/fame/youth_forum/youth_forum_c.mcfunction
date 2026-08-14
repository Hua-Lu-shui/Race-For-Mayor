#执行名誉决策任务的C方案并结算属性
execute if score @s decision_task matches 111 run scoreboard players add @s fame 2
execute if score @s decision_task matches 111 run scoreboard players add @s economy 2
execute if score @s decision_task matches 111 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 111 run tellraw @s {"text":"你选择了只参加合影交流：名誉 +2，经济 +2，民生 -4","color":"yellow"}
execute if score @s decision_task matches 111 run scoreboard players set @s decision_task 0

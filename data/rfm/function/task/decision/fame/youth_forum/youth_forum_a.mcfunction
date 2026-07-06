execute if score @s decision_task matches 111 run scoreboard players add @s fame 3
execute if score @s decision_task matches 111 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 111 run scoreboard players remove @s economy 2
execute if score @s decision_task matches 111 run tellraw @s {"text":"你选择了提出完整青年计划：名誉 +3，民生 +2，经济 -2","color":"yellow"}
scoreboard players set @s decision_task 0

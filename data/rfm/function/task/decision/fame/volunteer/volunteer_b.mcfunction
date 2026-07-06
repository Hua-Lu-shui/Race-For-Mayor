execute if score @s decision_task matches 106 run scoreboard players add @s fame 2
execute if score @s decision_task matches 106 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 106 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 106 run tellraw @s {"text":"你选择了低调安排社区服务：名誉 +2，民生 +2，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

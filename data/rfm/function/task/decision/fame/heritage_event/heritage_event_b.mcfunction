execute if score @s decision_task matches 115 run scoreboard players add @s fame 2
execute if score @s decision_task matches 115 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 115 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 115 run tellraw @s {"text":"你选择了办社区巡回小展：名誉 +2，民生 +1，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

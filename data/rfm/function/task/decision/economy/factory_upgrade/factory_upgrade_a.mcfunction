execute if score @s decision_task matches 209 run scoreboard players add @s economy 4
execute if score @s decision_task matches 209 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 209 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 209 run tellraw @s {"text":"你选择了大规模设备补贴：经济 +4，民生 +2，生态 -1","color":"yellow"}
scoreboard players set @s decision_task 0

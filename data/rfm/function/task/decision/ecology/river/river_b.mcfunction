execute if score @s decision_task matches 402 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 402 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 402 run scoreboard players remove @s economy 1
execute if score @s decision_task matches 402 run tellraw @s {"text":"你选择了先治理重点河段：生态 +2，民生 +1，经济 -1","color":"yellow"}
scoreboard players set @s decision_task 0

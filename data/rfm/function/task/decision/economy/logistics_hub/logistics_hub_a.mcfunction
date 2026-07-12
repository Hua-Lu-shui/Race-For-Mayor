execute if score @s decision_task matches 206 run scoreboard players add @s economy 4
execute if score @s decision_task matches 206 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 206 run tellraw @s {"text":"你选择了快速批准园区：经济 +4，民生 -2，生态 -1","color":"yellow"}
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0

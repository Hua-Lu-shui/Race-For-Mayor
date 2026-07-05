execute if score @s decision_task matches 205 run scoreboard players add @s economy 2
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 205 run tellraw @s {"text":"你选择了设立规范夜市街区：经济 +2，民生 +1","color":"yellow"}
scoreboard players set @s decision_task 0
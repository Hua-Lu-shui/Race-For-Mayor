execute if score @s decision_task matches 206 run scoreboard players add @s economy 2
execute if score @s decision_task matches 206 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 206 run scoreboard players remove @s ecology 1
execute if score @s decision_task matches 206 run tellraw @s {"text":"你选择了附带交通降噪条件：经济 +2，民生 +1，生态 -1","color":"yellow"}
execute if score @s decision_task matches 206 run scoreboard players set @s decision_task 0

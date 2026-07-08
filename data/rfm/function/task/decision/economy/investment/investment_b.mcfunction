execute if score @s decision_task matches 202 run scoreboard players add @s economy 3
execute if score @s decision_task matches 202 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 202 run tellraw @s {"text":"你选择了扶持本地创业园：经济 +3，民生 +1","color":"yellow"}
scoreboard players set @s decision_task 0
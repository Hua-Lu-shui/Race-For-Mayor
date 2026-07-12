execute if score @s decision_task matches 201 run scoreboard players add @s economy 1
execute if score @s decision_task matches 201 run scoreboard players add @s welfare 1
execute if score @s decision_task matches 201 run tellraw @s {"text":"你选择了稳定税率：经济 +1，民生 +1","color":"yellow"}
execute if score @s decision_task matches 201 run scoreboard players set @s decision_task 0
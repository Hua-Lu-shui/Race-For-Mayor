execute if score @s decision_task matches 201 run scoreboard players add @s economy 3
execute if score @s decision_task matches 201 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 201 run tellraw @s {"text":"你选择了减税：经济 +3，民生 -1","color":"yellow"}
scoreboard players set @s decision_task 0
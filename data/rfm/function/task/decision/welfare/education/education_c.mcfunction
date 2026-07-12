execute if score @s decision_task matches 303 run scoreboard players add @s economy 1
execute if score @s decision_task matches 303 run scoreboard players remove @s welfare 1
execute if score @s decision_task matches 303 run tellraw @s {"text":"你选择了调整片区和班额：经济 +1，民生 -1","color":"yellow"}
execute if score @s decision_task matches 303 run scoreboard players set @s decision_task 0

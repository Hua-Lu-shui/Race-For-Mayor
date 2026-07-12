execute if score @s decision_task matches 302 run scoreboard players add @s economy 2
execute if score @s decision_task matches 302 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 302 run tellraw @s {"text":"你选择了市场调节为主：经济 +2，民生 -2","color":"yellow"}
execute if score @s decision_task matches 302 run scoreboard players set @s decision_task 0

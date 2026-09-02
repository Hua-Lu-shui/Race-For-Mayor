execute if score @s decision_task matches 410 run scoreboard players add @s economy 4
execute if score @s decision_task matches 410 run scoreboard players remove @s ecology 6
execute if score @s decision_task matches 410 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 410 run tellraw @s [{"translate":"rfm.text.1e763ee24d47","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.678f248e3e4f","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 410 run scoreboard players set @s decision_task 0

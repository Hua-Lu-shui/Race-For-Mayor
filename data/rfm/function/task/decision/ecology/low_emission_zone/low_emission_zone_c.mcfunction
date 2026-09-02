execute if score @s decision_task matches 415 run scoreboard players add @s economy 4
execute if score @s decision_task matches 415 run scoreboard players remove @s ecology 4
execute if score @s decision_task matches 415 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 415 run tellraw @s [{"translate":"rfm.text.ab368a562abf","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.40e5da9b7fc0","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 415 run scoreboard players set @s decision_task 0

execute if score @s decision_task matches 208 run scoreboard players add @s economy 4
execute if score @s decision_task matches 208 run scoreboard players add @s fame 2
execute if score @s decision_task matches 208 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 208 run tellraw @s [{"translate":"rfm.text.e052d0c81da2","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 208 run scoreboard players set @s decision_task 0

execute if score @s decision_task matches 203 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 203 run scoreboard players add @s economy 6
execute if score @s decision_task matches 203 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 203 run tellraw @s [{"translate":"rfm.text.5423d3c9f089","color":"green"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.aff427681eb7","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 203 run scoreboard players set @s decision_task 0
